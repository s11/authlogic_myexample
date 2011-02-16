# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_authlogic_myexample_session',
  :secret      => '5e4bd1268256114e1c066bcb924faa473eed47044855aae9db8945056b2625d25f5deca503c7e0019095b665aa1733b8afe006b969b79966c74ba474a62ab7e5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
