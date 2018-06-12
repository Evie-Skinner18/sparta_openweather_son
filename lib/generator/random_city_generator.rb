require 'httparty'
require 'json'
require 'yaml'
# require_relative '../city.list'

#Making a library that generates a random postcode each time you run the tests
class RandomGenerator
  include HTTParty

#MAke a method in here that generate a random city name and then call that method in the test

# Grab all the city IDs from the YAML file. It's a giant array!
  def get_yaml_data
    @city_ids = YAML.load_file('../../city_id.yml')
  end

  def generate_random_city
    @city_ids = YAML.load_file('../../city_id.yml')
    @city_ids.sample
  end

  # def generate_random_city
  #   YAML.load_file('../services/city_id.yml')
  #
  # end

  # def get_response_code
  #   @single_random_postcode_data["status"]
  # end
end #end of class

response = RandomGenerator.new
p response.generate_random_city
#Randomly generate a number from the YAML file. So make a method that weill do this.
