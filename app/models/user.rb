class User < ActiveRecord::Base
  attr_accessible :current_message_id, :name
  has_secure_password
end
