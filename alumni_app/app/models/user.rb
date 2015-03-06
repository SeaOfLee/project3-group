require 'bcrypt'
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  searchkick
  has_secure_password
  has_many :comments
  has_many :posts
  has_many :jobs
  has_many :events


  has_attached_file :avatar, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>"
  }

  validates_attachment_content_type :avatar, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  #added in from intoducting devise
  def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
