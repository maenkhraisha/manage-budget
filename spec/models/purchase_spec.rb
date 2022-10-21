require 'rails_helper'

RSpec.describe Purchase, type: :model do
  
  describe 'Test Purchase' do

    before :each do
      @user = User.create(name: 'maen', 
        email: 'test@test.com',
        image: Rack::Test::UploadedFile.new('E:\user.jpg', 'image/jpg'),
        password: 123_456, 
        password_confirmation: 123_456 )
        @user.save

        @group_one = Group.create(user_id: @user.id,
          name:'gym', 
          icon:Rack::Test::UploadedFile.new('E:\group.jpg', 'image/jpg')) 

        @group_two = Group.create(user_id: @user.id,
          name:'home', 
          icon:Rack::Test::UploadedFile.new('E:\group.jpg', 'image/jpg')) 

        @group_three = Group.create(user_id: @user.id,
          name:'car', 
          icon:Rack::Test::UploadedFile.new('E:\group.jpg', 'image/jpg')) 

    end
  
    it 'should have a name' do
      purchase = Purchase.create(user_id: @user.id,
        name:'food', 
        amount: 100,
        group_ids: [@group_one.id,@group_two.id,@group_three.id])        
      
      expect(purchase.amount).to eq(100)
    end

  end

  
end
