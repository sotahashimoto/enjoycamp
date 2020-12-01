require 'rails_helper'

RSpec.describe Participation, type: :model do
  describe 'アソシエーションのテスト' do
    let(:association) do
      described_class.reflect_on_association(target)
    end

    context 'Userモデルとの関係' do
      let(:target) { :user }

      it 'N:1となっている' do
        expect(association.macro).to eq :belongs_to
      end
    end

    context 'Recruitmentモデルとの関係' do
      let(:target) { :recruitment }

      it 'N:1となっている' do
        expect(association.macro).to eq :belongs_to
      end
    end
  end
end