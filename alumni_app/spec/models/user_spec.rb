require 'rails_helper'

RSpec.describe User, :type => :model do
  before(:each)  do
    @valid_user = User.create(
      :first_name => "Lee",
      :last_name => "Person",
      :email => "lee@lee.com",
      :password => "123"
    )

    @invalid_user = User.create(
      :first_name => " ",
      :last_name => "Person",
      :email => "person@person.com",
      :password => "123"
    )
  end

  it "is invalid without a first name" 

  it "is invalid without a last name"

  it "is invalid without an email"

  it "is invalid with a duplicate email"

  



end