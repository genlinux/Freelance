# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_webt_session',
  :secret      => 'a6c590bb1a1f53e8e3431c27870439741d8940f4370c0c86ad00810801e5e79dfd8521c13449977a1be33f3121c4c845167d91868b49f5d048899c6c324a6b89'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
