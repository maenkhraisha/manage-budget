require 'rails_helper'

RSpec.describe "Groups", type: :request do
  include Devise::Test::IntegrationHelpers

  describe "Group request test" do
  
    before(:each) do
      @user = User.create(name: 'maen', email: 'test@test.com', password: '123456')
      @group = Group.create(user_id: @user.id,
        name:'gym', 
        icon:Rack::Test::UploadedFile.new('E:\group.jpg', 'image/jpg')) 

      sign_in @user
    end
 
    it 'groups#index - should response status success' do
      get groups_path(@user.id)
      expect(response).to have_http_status(:success)
    end

    it 'groups#show - should response status success' do      
      get group_path( @group.id)
      expect(response).to have_http_status(:success)
    end

    it 'groups#new - should response status success' do
      get new_group_path(@user.id)
      expect(response).to have_http_status(:success)
    end

  end
end
