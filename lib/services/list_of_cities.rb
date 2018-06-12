require 'httparty'
require 'json'

class ListOfCitiesService
  include HTTParty

  # doesn't like it when I use base_uri 'https://api.openweathermap.orgdata/2.5'  so use whole address for each method
  def get_weather
    JSON.parse(self.class.get("https://api.openweathermap.org/data/2.5/weather?id=524901&APPID=41a4b369873fcaf6d5e69dc2f5a22e38").body)
  end

  def get_city_weather(city_id)
    JSON.parse(self.class.get("https://api.openweathermap.org/data/2.5/weather?id=#{city_id}&APPID=41a4b369873fcaf6d5e69dc2f5a22e38").body)
  end
end

city = ListOfCitiesService.new


#My API key   41a4b369873fcaf6d5e69dc2f5a22e38
