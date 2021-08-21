# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Subject, type: :model do
  describe 'Testing validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:unit) }
    it { should validate_presence_of(:target) }
  end

  describe 'Testing associations' do
    it { should have_many(:measures).dependent(:destroy) }
    it { should have_many(:users).through(:measures) }
  end

  describe 'Testing scopes' do
    let!(:subject1) { Subject.create(title: 'Abc', unit: 'abc', icon: 'abc:abcicon', target: 30) }
    let!(:subject2) { Subject.create(title: 'Xyz', unit: 'xyz', icon: 'xyz:xyzicon', target: 45) }

    describe '.order_by_title' do
      it 'returns subjects collection ordered by title alphabetically' do
        expect(Subject.order_by_title.first).to eq subject1
      end

      it 'returns empty subjects collection array if there is no subject object' do
        Subject.destroy_all
        expect(Subject.order_by_title).to eq []
      end
    end
  end
end
