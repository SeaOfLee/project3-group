class User < ActiveRecord::Base
  require 'bcrypt'
  
  has_secure_password
  has_many :comments
  has_many :posts

end
