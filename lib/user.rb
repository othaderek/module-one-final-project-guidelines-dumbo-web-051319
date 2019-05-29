class User < ActiveRecord::Base
  has_many :user_characters
  has_many :characters, through: :user_characters
end
