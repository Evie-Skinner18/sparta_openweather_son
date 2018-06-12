require 'httparty'
require 'json'

#Making a library that generates a random postcode each time you run the tests
class RandomGenerator
  include HTTParty

#MAke a method in here that generate a random city name and then call that method in the test

  def generate_random_city
    @single_random_city_data = JSON.parse(self.class.get("/random/postcodes").body)["result"]["postcode"].gsub(" ", "")
  end

  def get_response_code
    @single_random_postcode_data["status"]
  end



end #end of class
random_postcode = RandomGenerator.new
p random_postcode.generate_random_postcode
