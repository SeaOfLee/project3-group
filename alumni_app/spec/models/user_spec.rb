require 'rails_helper'

RSpec.describe User, :type => :model do
  # before(:each)  do
  #   @valid_user = User.create(
  #     :first_name => "Lee",
  #     :last_name => "Person",
  #     :email => "lee@lee.com",
  #     :password => "123"
  #   )
  #
  #   @invalid_user = User.create(
  #     :first_name => " ",
  #     :last_name => "Person",
  #     :email => "person@person.com",
  #     :password => "123"
  #   )
  # end

  let(:user) { FactoryGirl.create :user }

  describe "validates presence of  first_name" do
    it { should validate_presence_of(:first_name) }
  end

  describe "validates presence of last_name" do
    it { should validate_presence_of(:last_name) }
  end

  describe "validates presence of email" do
    it { should validate_presence_of(:email) }
  end

  describe "validates presence of password" do
    it { should validate_presence_of(:password) }
  end

  describe "validates uniqueness_of_email" do
    it { should validate_uniqueness_of(:email) }
  end

  # describe "validates that users have many comments through posts" do
  #   it { expect(user).to have_many(:comments).through(:posts) }
  # end

end
