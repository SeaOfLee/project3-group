require 'bcrypt'
class User < ActiveRecord::Base
  searchkick
  has_secure_password
  has_many :comments
  has_many :posts
  has_many :jobs
  has_many :events

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_presence_of :password
  validates_uniqueness_of :email



  has_attached_file :avatar, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>"
  }

  validates_attachment_content_type :avatar, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]


end
