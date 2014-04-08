require 'sinatra'

class AppController < Sinatra::Base
  get '/' do
    'Fizzbuzz'
  end

  get '/:number' do
    params[:number]
  end
end
