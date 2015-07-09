require 'spec_helper'

describe 'WeatherForecaster' do
	it "should return weather details for a named city" do
		city_forecast = WeatherForecaster.forecast("London", 5)
		expect(city_forecast).not_to be_nil
		expect(city_forecast.status).to eq("ok")
		expect(city_forecast.country).to eq("CA")
		expect(city_forecast.city).to eq("London")
		expect(city_forecast.latitude).to eq(42.983391)
		expect(city_forecast.longitude).to eq(-81.23304)
		expect(city_forecast.list_details[0][:date]).to eq('2015-07-09T17:00:00+00:00')
		expect(city_forecast.list_details[0][:day_temp]).to eq(292.66)
		expect(city_forecast.list_details[0][:night_temp]).to eq(285.83)
		expect(city_forecast.list_details[0][:pressure]).to eq(989.94)
		expect(city_forecast.list_details[0][:humidity]).to eq(95)
		expect(city_forecast.list_details[0][:weather_description]).to eq("light rain")
  end		
  
  it "should return empty value" do
    city_forecast = WeatherForecaster.forecast("abcdef", 5)
    expect(city_forecast.message).to be_empty
    expect(city_forecast.status).to eq("not_ok")
  end  
end
	
