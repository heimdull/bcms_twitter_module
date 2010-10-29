# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bcms_twitter_module_session',
  :secret      => 'e18e34a18d1deeb9c01be77722319c1c4cfaf4ac685708cb53d58fbb59b99a7229ae12556d568057c421191e0081c6b0b6dca76361d0fcb52e0ab8cfc3f489a0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
