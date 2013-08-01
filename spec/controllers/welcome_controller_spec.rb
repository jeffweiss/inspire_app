require 'spec_helper'

describe WelcomeController do

  describe "GET 'index'" do
    before(:each) do
      model = mock_model Message, :message => "test"
      subject.stub(:find_message => model)
    end

    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end
