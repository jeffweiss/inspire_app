class WelcomeController < ApplicationController
  def find_message
    Message.first
  end

  def index
    @message = current_message.message
  end

  def current_message
    Message.find_by_id(session_message_id) || Message.new(:message => "we've run out of inspiration")
  end

  def session_message_id
    session[:current_message_id] ||= 1
  end

  def next_message
    session[:current_message_id] = session_message_id + 1
    redirect_to '/'
  end
end
