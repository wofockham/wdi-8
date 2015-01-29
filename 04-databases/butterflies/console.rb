# Simple program to provide access to butterfly models within pry.
require 'sqlite3'
require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDERR) # Show SQL in the terminal.

# Explains to ActiveRecord where to find the database.
ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'butterflies.db'
)

# Include our models.
require_relative 'butterfly'
require_relative 'plant'

binding.pry
