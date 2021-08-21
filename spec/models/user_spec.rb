require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Testing validations' do
    it { should have_secure_password }
    it { should validate_presence_of(:username) }
  end

  describe 'Testing associations' do
    it { should have_many(:measures).dependent(:destroy) }
    it { should have_many(:subjects).through(:measures) }
  end
end
