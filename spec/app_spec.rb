require 'spec_helper'

describe AppController do
  include Rack::Test::Methods

  def app
    AppController
  end
end
