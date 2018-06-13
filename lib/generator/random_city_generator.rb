require 'httparty'
require 'json'
require 'yaml'

#Making a library that generates a random postcode each time you run the tests
class RandomGenerator
  include HTTParty

#MAke a method in here that generate a random city name and then call that method in the test
# Grab all the city IDs from the YAML file. It's a giant array!
  def get_yaml_data
    #The file path is relative to where it's being called from (i.e the weather super class not here where it's being created)
    @city_ids = YAML.load_file('city_id.yml')
  end

  #.sample genenrates a random item from a given array
  def generate_random_city
    @city_ids = YAML.load_file('city_id.yml')
    @city_ids.sample
  end
end #end of class

response = RandomGenerator.new
