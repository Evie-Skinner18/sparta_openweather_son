require 'spec_helper'
require_relative '../lib/generator/random_city_generator'

describe Weather do
  context 'requesting weather information on a single city works correctly' do

    before(:all) do
        #create an instance of the city
        @city_weather = Weather.new
        @city_weather.generate_random_city
      end

    it "should return all the weather information in a hash" do
      expect(@city_weather.get_city_weather(random_city_id)).to be_a(Hash)
    end







    end

end #end of descirbe
