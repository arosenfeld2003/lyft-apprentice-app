require 'sinatra'
require 'json'

set :bind, '0.0.0.0'
set :port, 8080

def cut_string(str)
  # declare the string we will return
  return_string = ""
  str.each_char.with_index do |c, i|
    # push every third letter of input string into return_string
    if i != 0 && ((i + 1) % 3 == 0)
      return_string += c
    end
  end
  return return_string
end

def app
  get '/test' do
    erb :index
  end

  # Return a JSON object:{“return_string”: cut_string}
  post '/test' do
    cut_str = cut_string(params[:return_string])
    str_to_parse = "{\"return_string\": \"#{cut_str}\"}"
    hash = JSON.parse(str_to_parse)
    "#{hash}"
  end
end

app()





