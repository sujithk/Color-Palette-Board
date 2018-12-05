require 'rails_helper'

RSpec.describe Palette, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:code) }
    it { is_expected.to validate_presence_of(:row) }
    it { is_expected.to validate_presence_of(:column) }
     it { should belong_to(:user) }
   end
end
