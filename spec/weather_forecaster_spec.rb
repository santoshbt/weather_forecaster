require 'spec_helper'

describe 'WeatherForecaster' do
	it "should return weather details for a named city" do
		city_forecast = WeatherForecaster.forecast("London", 5)
    expect(city_forecast).not_to be_nil
    expect(city_forecast.status).to eq("ok")
		expect(city_forecast.country).to eq("CA")
		expect(city_forecast.city).to eq("London")
		expect(city_forecast.list_details[0][:date]).to eq(DateTime.strptime("1436374800",'%s'))
		expect(city_forecast.list_details[0][:day_temp]).to eq(297.23)
		expect(city_forecast.list_details[0][:night_temp]).to eq(291.45)
		expect(city_forecast.list_details[0][:pressure]).to eq(994.81)
		expect(city_forecast.list_details[0][:humidity]).to eq(95)
		expect(city_forecast.list_details[0][:weather_description]).to eq("overcast clouds")
    end		
end
	
