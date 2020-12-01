require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'バリデーションのテスト' do
    context 'contentカラム' do
      it "空欄でないこと" do
        comment = build(:comment, content: nil)
        comment.valid?
        expect(comment.errors[:content]).to include("can't be blank")
      end

      it "200文字以下であること" do
        comment = build(:comment, content: "a" * 201)
        comment.valid?
        expect(comment.errors[:content]).to include("is too long (maximum is 200 characters)")
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
  end
end