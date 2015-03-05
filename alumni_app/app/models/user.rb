require 'bcrypt'
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation

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

end

# migration
class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.database_authenticatable :null => false
      # t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both

      t.timestamps
    end

    add_index :users, :email,                :unique => true
    # add_index :users, :confirmation_token,   :unique => true
    add_index :users, :reset_password_token, :unique => true
    # add_index :users, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :users
  end
end

# migration
create_table(:users) do |t|
  t.database_authenticatable :null => false
  # t.confirmable
  t.recoverable
  t.rememberable
  t.trackable
  # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both

  t.timestamps
end

add_index :users, :email,                :unique => true
# add_index :users, :confirmation_token,   :unique => true
add_index :users, :reset_password_token, :unique => true
# add_index :users, :unlock_token,         :unique => true