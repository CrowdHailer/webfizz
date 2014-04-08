require 'spec_helper'

describe AppController do
  include Rack::Test::Methods

  def app
    AppController
  end

  it 'should have a homepage response' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Fizzbuzz')
  end

  it 'should respond with 1 when visiting root/1' do
    get '/1'
    expect(last_response).to be_ok
    expect(last_response.body).to include('1')
  end
end
