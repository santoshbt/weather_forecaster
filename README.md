Weather Forecast finder by city name.

Description

WeatherForecaster accepts the city name Ex: London or city name followed by country code Ex: London, GB
It can accept the number of days from the current day to get the weather details. It provides the weather information as follows.
  - City name which you are searching for.
  - Country code.
  - Latitude, Longitude.
  - Day and night temperature values in Kelvin.  
  - Pressure and humidity
  - Weather Description.
  - Current Date Time.

 Installation
 
 gem install httparty
 gem install weather_forecaster -v 0.1.0

 or Add 
 gem "httparty"
 gem 'weather_forecaster', '~> 0.1.0' in gemfile.

 Usage

 require 'WeatherForecaster'

 # To get the weather forecast for 5 days from today, default is 1 day.
 forecast = WeatherForecaster.forecast("London", 5) 
 
 forecast.city = London
 forecast.country = GB
 forecast.latitude = 51.50853
 forecast.longitude = -0.12574
 forecast.day_temp = 289.56
 forecast.night_temp = 285.49
 forecast.pressure = 1015.35
 forecast.humidity = 76
 forecast.weather_description = light rain
 forecast.date 

 Author

 Santosh Turamari
