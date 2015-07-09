require 'spec_helper'

describe 'WeatherForecaster' do
	it "should return weather details for a named city" do
		city_forecast = WeatherForecaster.forecast("London", 5)
    		expect(city_forecast).not_to be_nil
    		expect(city_forecast.status).to eq("ok")
		expect(city_forecast.country).to eq("GB")
		expect(city_forecast.city).to eq("London")
		expect(city_forecast.latitude).to eq(51.50853)
		expect(city_forecast.longitude).to eq(-0.12574)
		expect(city_forecast.list_details[0][:date]).to eq('2015-07-09T12:00:00+00:00')
		expect(city_forecast.list_details[0][:day_temp]).to eq(17.89)
		expect(city_forecast.list_details[0][:night_temp]).to eq(11.14)
		expect(city_forecast.list_details[0][:pressure]).to eq(1030.04)
		expect(city_forecast.list_details[0][:humidity]).to eq(88)
		expect(city_forecast.list_details[0][:weather_description]).to eq("sky is clear")
    end		
end
	
