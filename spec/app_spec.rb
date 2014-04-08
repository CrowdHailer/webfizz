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

  behaviour = {
    '1' => '1',
    '2' => '2',
    '3' => 'Fizz',
    '5' => 'Buzz'
  }

  behaviour.each do |submitted, reply|
    it "should respond with #{reply} when visiting root/#{submitted}" do
      get "/#{submitted}"
      expect(last_response).to be_ok
      expect(last_response.body).to include(reply)
    end
  end
end
