# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_expenses_session',
  :secret      => 'ba486ffc2e4600442ed6224849cbc48b6a240c4ab558b09550f366f7032680b6929c157c636e182df91b1066a3cfe9fafa66b3e4ae47d34ca3ca697f7b01d8d9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
