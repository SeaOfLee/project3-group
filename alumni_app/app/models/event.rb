class Event < ActiveRecord::Base
  searchkick
  belongs_to :user
end
