require 'rails_helper'

RSpec.describe Recruitment, type: :model do
  describe 'バリデーションのテスト' do
    context 'titleカラム' do
      it "空欄でないこと" do
        recruitment = build(:recruitment, title: nil)
        recruitment.valid?
        expect(recruitment.errors[:title]).to include("を入力してください")
      end

      it "35文字以下であること" do
        recruitment = build(:recruitment, title: "a" * 36)
        recruitment.valid?
        expect(recruitment.errors[:title]).to include("は35文字以内で入力してください")
      end
    end

    context 'contentカラム' do
      it "空欄でないこと" do
        recruitment = build(:recruitment, content: nil)
        recruitment.valid?
        expect(recruitment.errors[:content]).to include("を入力してください")
      end

      it "350文字以下であること" do
        recruitment = build(:recruitment, content: "a" * 351)
        recruitment.valid?
        expect(recruitment.errors[:content]).to include("は350文字以内で入力してください")
      end
    end

    context 'capacityカラム' do
      it "空欄でないこと" do
        recruitment = build(:recruitment, capacity: nil)
        recruitment.valid?
        expect(recruitment.errors[:capacity]).to include("を入力してください")
      end
    end

    context 'scheduled_start_dateカラム' do
      it "空欄でないこと" do
        recruitment = build(:recruitment, scheduled_start_date: nil)
        recruitment.valid?
        expect(recruitment.errors[:scheduled_start_date]).to include("を入力してください")
      end
    end

    context 'scheduled_end_dateカラム' do
      it "空欄でないこと" do
        recruitment = build(:recruitment, scheduled_end_date: nil)
        recruitment.valid?
        expect(recruitment.errors[:scheduled_end_date]).to include("を入力してください")
      end
    end
  end

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

    context 'Campsiteモデルとの関係' do
      let(:target) { :campsite }

      it 'N:1となっている' do
        expect(association.macro).to eq :belongs_to
      end
    end

    context 'participationsモデルとの関係' do
      let(:target) { :participations }
      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end
  end
end