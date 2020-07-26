- This app requires the Sinatra gem.
  * gem install sinatra
- From terminal, run the app:
  * ruby lyft.rb
- URL:
  * localhost:8080/test (get and post routes)

Requirements:
- Accept a POST request to the route “/test”, which accepts one argument “string_to_cut”.
- Return a JSON object with the key “return_string” and a string containing every third letter from the original string.
