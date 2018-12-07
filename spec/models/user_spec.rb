require 'rails_helper'

RSpec.describe User, type: :model do

  describe "Creation" do
    it 'is invalid without a user name or a user name with non word characters' do
      invalid_user_names = [nil, '', ' ', '123', 'user!@#']

      invalid_user_names.each do |invalid_user_name|
        user = User.new(username: invalid_user_name)
        expect(user).to be_invalid
      end
    end

    it 'is invalid when the user name is not unique' do
      user_name = Faker::Name.name.downcase
      ip = Faker::Internet.ip_v4_address
      User.create(username: user_name ,ip_address: ip)
      duplicate_user = User.new(username: user_name)
      expect(duplicate_user).to be_invalid
    end

    it 'is valid with a user name' do
      user_name = user_name = Faker::Name.name.downcase
      ip = Faker::Internet.ip_v4_address
      user = User.new(username: user_name ,ip_address: ip)
      expect(user).to be_valid
    end

    context 'validations' do
     it { is_expected.to validate_presence_of(:username) }
     it { is_expected.to validate_presence_of(:ip_address) }
    end

  end

end
