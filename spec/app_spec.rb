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
end
