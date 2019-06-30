require 'bundler'
Bundler.require

# Setup a DB connection here
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.sqlite')

require_all 'lib'