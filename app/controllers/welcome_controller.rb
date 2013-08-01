class WelcomeController < ApplicationController
  def find_message
    Message.first
  end

  def index
    @message = find_message.message
  end
end
