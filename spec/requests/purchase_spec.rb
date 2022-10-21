require 'rails_helper'

RSpec.describe "Purchases", type: :request do
  include Devise::Test::IntegrationHelpers

  describe 'purchase request test' do
    before(:each) do
      @user = User.create(name: 'maen', email: 'test@test.com', password: '123456')
      @group = Group.create(user_id: @user.id,
        name:'gym', 
        icon:Rack::Test::UploadedFile.new('E:\group.jpg', 'image/jpg'))       
      @purchase = Purchase.create(user_id: @user, name: 'food', amount: 50,group_ids: [@group.id])

      sign_in @user
    end

    it 'groups#index - should response status success' do
      get purchases_path(@user.id, @group.id)
      expect(response).to have_http_status(:success)
    end

    it 'purchase#new - should response status success' do
      get new_purchase_path(@user.id, @group.id)
      expect(response).to have_http_status(:success)
    end
  end
end
