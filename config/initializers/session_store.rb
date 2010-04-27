# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_twphch_2010_session',
  :secret      => 'c31c26b0cb2ea70fc714fc0bc3273835fe3ac4eb3c8ef575778d210cfbea4be03e19a961c52bbcdf2d22791ffc1ee5234761577182c692fceaea155a503e80fc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
