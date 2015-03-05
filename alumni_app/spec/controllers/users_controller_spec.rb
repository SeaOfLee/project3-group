require 'rails_helper'

describe UsersController do
  before(:each) do
    @user1 = User.create(first_name:'Lee', last_name:'Richardson', email:'lee@lee.com', password: '123')
    @user2 = User.create(first_name:'Lee', last_name:'Richardson', email:'lee@lee.com', password: '123')
  end

  describe "GET #index" do
    before(:each) do
      get :index
    end
    it 'should render the correct page' do
      expect(response).to render_template :index
    end

  end
end
