# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mor2_session',
  :secret      => '071a663daabb577653c93f4aa9a3c12e06ff482e21d4beca7867b50e0d5ba40366672d5c001bf6f3034d273fcbdd41d27c8d9776499b07133806e48b02331162'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
