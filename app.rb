require 'sinatra'

class AppController < Sinatra::Base
  get '/' do
    'Fizzbuzz'
  end

  get '/:number' do
    num = params[:number].to_i
    response = 'Fizz' if num % 3 == 0
    response = 'Buzz' if num % 5 == 0
    response || num.to_s
  end
end
