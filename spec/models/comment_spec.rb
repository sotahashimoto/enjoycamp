require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'バリデーションのテスト' do
    context 'contentカラム' do
      it "空欄でないこと" do
        comment = build(:comment, content: nil)
        comment.valid?
        expect(comment.errors[:content]).to include("can't be blank")
      end
    end
  end
end