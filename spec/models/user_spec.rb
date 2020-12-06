require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'バリデーションのテスト' do
    context 'nameカラム' do
      it "空欄でないこと" do
        user = build(:user, name: nil)
        user.valid?
        expect(user.errors[:name]).to include("を入力してください")
      end

      it "15文字以下であること" do
        user = build(:user, name: "a" * 16)
        user.valid?
        expect(user.errors[:name]).to include("は15文字以内で入力してください")
      end
    end

    context 'emailカラム' do
      it "空欄でないこと" do
        user = build(:user, email: nil)
        user.valid?
        expect(user.errors[:email]).to include("を入力してください")
      end

      it "重複していたら登録できないこと" do
        user1 = create(:user,name: "taro", email: "taro@example.com")
        user2 = build(:user, name: "ziro", email: user1.email)
        user2.valid?
        expect(user2.errors[:email]).to include("はすでに存在します")
      end

      it "メールアドレスが指定の表記でないと登録できない" do
        user = build(:user, email: "test.test")
        user.valid?
        expect(user.errors[:email]).to include("は不正な値です")
      end
    end

    context 'passwordカラム' do
      it "空欄でないこと" do
        user = build(:user, password: nil)
        user.valid?
        expect(user.errors[:password]).to include("を入力してください")
      end

      it "重複していないと登録できないこと" do
        user = build(:user, password: "000000", password_confirmation: "aaaaaa")
        user.valid?
        expect(user.errors[:password_confirmation]).to include("とPasswordの入力が一致しません")
      end
    end

    context 'favorite_placeカラム' do
      it "17文字以下であること" do
        user = build(:user, favorite_place: "a" * 18)
        user.valid?
        expect(user.errors[:favorite_place]).to include("は17文字以内で入力してください")
      end
    end

    context 'introductionカラム' do
      it "100文字以下であること" do
        user = build(:user, introduction: "a" * 101)
        user.valid?
        expect(user.errors[:introduction]).to include("は100文字以内で入力してください")
      end
    end
  end

  describe 'アソシエーションのテスト' do
    let(:association) do
      described_class.reflect_on_association(target)
    end

    context 'commentsモデルとの関係' do
      let(:target) { :comments }
      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end

    context 'favoritesモデルとの関係' do
      let(:target) { :favorites }
      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end

    context 'recruitmentsモデルとの関係' do
      let(:target) { :recruitments }
      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
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