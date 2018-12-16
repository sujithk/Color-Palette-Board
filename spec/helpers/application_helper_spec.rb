require "rails_helper"

RSpec.describe ApplicationHelper, type: :helper do
  before(:each) do
    user_name = Faker::Name.name.downcase
    ip = Faker::Internet.ip_v4_address
    @user = User.create(username: user_name,ip_address: ip)
    @grid_cell = Palette.first
  end

  context 'when the cell is not colored yet' do
    it 'has no colored by info' do
      expect(helper.get_tile_details(1,1)).to eq([])
    end
  end

  context 'when the cell is colored' do
    context 'when the cell is colored by random user' do
      it 'has colored by info' do
        allow(helper).to receive(:random_user).and_return(@user)

        Palette.create(
          code: '#000fff'
        )

        expect(helper.get_tile_details(1,1)).to eq([])
      end
    end
  end
end
