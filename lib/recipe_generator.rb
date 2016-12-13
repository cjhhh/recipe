require 'open-uri'
require 'Nokogiri'
require 'pry'
require "./lib/recipe_generator/version" # The environment here connects to my version 
require_relative './cli' # This connects to my actual controller which says "Welcome...."
require_relative './rep'