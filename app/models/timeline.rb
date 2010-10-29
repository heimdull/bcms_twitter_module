require 'timeout'
require 'twitter'

class Timeline < ActiveRecord::Base
  TIMEOUT = 10
  TTL = 30.minutes
  
  validates_presence_of :username
  
  def get_timeline(tweet_amount=1)
    
    # Remove the cached timeline if its expired
    if self.expires_at.nil? || self.expires_at < Time.now.utc
      Rails.cache.delete('Timeline.Tweets') 
    end

    # Make sure to invalidate the cache if the amount chanages
    Rails.cache.fetch('Timeline.Tweets' + tweet_amount.to_s) { get_timeline_from_twitter(tweet_amount) }
    
  end
  
  private
  
  def get_timeline_from_twitter(tweet_amount=1)
    
    begin

      # New expires time for this timeline
      update_attribute(:expires_at, Time.now.utc + TTL)
      
      Timeout.timeout(TIMEOUT) {
        content = Twitter.timeline(self.username)[0..(tweet_amount.to_i - 1)]
      }
            
    rescue SocketError, Timeout::Error, Twitter::General => exception
      logger.error("Loading timeline for user #{self.username} failed with the following error #{exception.inspect}")        
    end

  end
  
end
