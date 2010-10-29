module Cms::Routes
  def routes_for_bcms_twitter_module
    namespace(:cms) do |cms|
      #cms.content_blocks :twitter_modules
    end  
  end
end
