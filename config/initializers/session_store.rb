# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_redhat_session',
  :secret      => 'e4ed5832ba3f4416a750ac463bf75fd9906669da482c2002e83c4c515558020d02ac4a23bcf5a42bd7fb88da5b2aec01645af75c73de133903be078e835e3b7e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
