require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'Group Model :' do
    
    before :each do
      @user = User.create(name: 'maen', 
        email: 'test@test.com',
        image: Rack::Test::UploadedFile.new('E:\user.jpg', 'image/jpg'),
        password: 123_456, 
        password_confirmation: 123_456 )
        @user.save
    end
    
    it 'group should have the name ' do
      group = Group.create(user_id: @user.id,
        name:'gym', 
        icon:Rack::Test::UploadedFile.new('E:\group.jpg', 'image/jpg')) 
      
      expect(group.name).to eq('gym')
    end

  end
end
