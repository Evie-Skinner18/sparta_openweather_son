#dont need to require httparty or json here as all the logic
#is contianed in the other classes

require_relative 'services/list_of_cities'
require_relative 'generator/random_city_generator'

class Weather
  #no logic in here! This is the super class and we're getting the
  #logic from the other smaller classes. All we're doing is istantiating
  #each of those smaller classes

  def list_of_cities
    ListOfCitiesService.new
  end

  def random_city_generator
    RandomGenerator.new
  end

end
#now we know our individual services will work through the super class

service = Weather.new

p random_city_id = service.random_city_generator.generate_random_city

p service.list_of_cities.get_city_weather(random_city_id)
