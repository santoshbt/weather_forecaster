Weather Forecast finder by city name.

#Description

WeatherForecaster accepts the city name Ex: London or city name followed by country code Ex: London, GB
It can accept the number of days from the current day to get the weather details. It provides the weather information as follows.
  - City name which you are searching for.
  - Country code.
  - Latitude, Longitude.
  - Day and night temperature values in Kelvin.  
  - Pressure and humidity
  - Weather Description.
  - Dates of corresponding days.

 #Installation
 - gem install weather_forecaster

 or Add 
 gem 'weather_forecaster' in gemfile.

 # Usage

 require 'weather_forecaster'

 To get the weather forecast for 5 days from today, use
 
 forecast = WeatherForecaster.forecast("London", 5) 
 
 Default is 1 day.
 
 - forecast.city = London
 - forecast.country = GB
 - forecast.latitude = 51.50853
 - forecast.longitude = -0.12574
 
 To get the details of day , night temperature values, humidity, pressure, weather condition(description), dates of   corresponding days

 - forecast.list_details
 

 Author

 Santosh Turamari
