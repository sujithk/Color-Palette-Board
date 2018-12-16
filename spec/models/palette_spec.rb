require 'rails_helper'

RSpec.describe Palette, type: :model do

  describe "Creation" do
    it 'is invalid when color is not in hex format' do
      invalid_hex_colors = ['123', '#1234', '#12345g', '@123456', '', ' ']

      invalid_hex_colors.each do |invalid_hex_color|
        grid_cell = Palette.new(code: invalid_hex_color)
        expect(grid_cell).to be_invalid
      end
    end
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:code) }
    it { is_expected.to validate_presence_of(:row) }
    it { is_expected.to validate_presence_of(:column) }
     it { should belong_to(:user) }
   end

end
