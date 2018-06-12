require 'httparty'
require 'json'
require 'yaml'
require_relative '../lib/city.list.yml'

#Making a library that generates a random postcode each time you run the tests
class RandomGenerator
  include HTTParty

#MAke a method in here that generate a random city name and then call that method in the test

  def get_yaml_data
    YAML.load_file('resources/city_id.yml')
  end

  def generate_random_city
    YAML.load_file('resources/city_id.yml')

  end

  # def get_response_code
  #   @single_random_postcode_data["status"]
  # end



end #end of class
random_city = RandomGenerator.new
p random_city.generate_random_city
#Randomly generate a number from the YAML file. So make a method that weill do this.
