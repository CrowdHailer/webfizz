require 'sinatra'

class AppController < Sinatra::Base
  get '/' do
    'Fizzbuzz'
  end
end
