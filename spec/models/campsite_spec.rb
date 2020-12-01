require 'rails_helper'

RSpec.describe Campsite, type: :model do
  describe 'バリデーションのテスト' do
    context 'nameカラム' do
      it "空欄でないこと" do
        campsite = build(:campsite, name: nil)
        campsite.valid?
        expect(campsite.errors[:name]).to include("can't be blank")
      end

      it "200文字以下であること" do
        campsite = build(:campsite, name: "a" * 18)
        campsite.valid?
        expect(campsite.errors[:name]).to include("is too long (maximum is 17 characters)")
      end
    end

    context 'postcodeカラム' do
      it "空欄でないこと" do
        campsite = build(:campsite, postcode: nil)
        campsite.valid?
        expect(campsite.errors[:postcode]).to include("can't be blank")
      end

      it "200文字以下であること" do
        campsite = build(:campsite, postcode: "0" * 8)
        campsite.valid?
        expect(campsite.errors[:postcode]).to include("is too long (maximum is 7 characters)")
      end
    end

    context 'addressカラム' do
      it "空欄でないこと" do
        campsite = build(:campsite, address: nil)
        campsite.valid?
        expect(campsite.errors[:address]).to include("can't be blank")
      end

      it "200文字以下であること" do
        campsite = build(:campsite, address: "a" * 26)
        campsite.valid?
        expect(campsite.errors[:address]).to include("is too long (maximum is 25 characters)")
      end
    end
  end

  describe 'アソシエーションのテスト' do
    let(:association) do
      described_class.reflect_on_association(target)
    end

    context 'Commentモデルとの関係' do
      let(:target) { :comments }
      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end

    context 'Favoriteモデルとの関係' do
      let(:target) { :favorites }
      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end

    context 'Recruitmentsモデルとの関係' do
      let(:target) { :recruitments }
      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end
  end
end