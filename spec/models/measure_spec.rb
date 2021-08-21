# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Measure, type: :model do
  describe 'Testing validations' do
    it { should validate_presence_of(:result) }
    it { should validate_presence_of(:date) }
  end

  describe 'Testing associations' do
    it { should belong_to(:subject) }
    it { should belong_to(:user) }
  end

  describe 'Testing scopes' do
    let!(:user) { User.create(id: 1, username: 'bottest', password: 'bottest') }
    let!(:subject1) { Subject.create(id: 1, title: 'Abc', unit: 'abc', icon: 'abc:abcicon', target: 30) }
    let!(:subject2) { Subject.create(id: 3, title: 'Xyz', unit: 'xyz', icon: 'xyz:xyzicon', target: 45) }
    let!(:measure1) { Measure.create(user_id: 1, date: '1615680000000', result: 32, subject_id: 1) }
    let!(:measure2) { Measure.create(user_id: 1, date: '1815240000000', result: 116, subject_id: 3) }

    describe '.order_by_date' do
      it 'returns measures collection ordered by date' do
        expect(Measure.order_by_date.first).to eq measure2
      end

      it 'returns empty measures collection array if there is no measure object' do
        Measure.destroy_all
        expect(Measure.order_by_date).to eq []
      end
    end
  end
end
