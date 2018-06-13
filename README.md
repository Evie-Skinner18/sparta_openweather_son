# Mini Project: 12th June
Making a service object model to test the Open Weather API. This project has used the following technical features:

- A super class
- A random city generator
- Two smaller classes:
  - one which accesses the API and parses the data through JSON into a Ruby hash
  - one which generates the ID of a random city in the YAML file of cities.
- The methods contained in the test specification combine the methods in these smaller classes together to test the weather information that matches the given city ID.
- I used more local variables than instance variables in the test specification in order to improve the performance of the tests (since they are 'lighter' than other variable types).

## Service - (Current Weather - By City Name)

https://openweathermap.org/current#name

- Generate The Data

- YAML - List of city IDs

- Get random city name from the list of ID’s - city_id.yml

- Get its name from JSON file - city_list.json
