require 'bcrypt'
class User < ActiveRecord::Base
  has_secure_password
  has_many :comments
  has_many :posts
  has_many :jobs


  has_attached_file :avatar, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>"
  }

  validates_attachment_content_type :avatar, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
