class Job < ActiveRecord::Base
  searchkick
  belongs_to :user
end
