require 'rails_helper'

RSpec.describe "Home", type: :request do
  describe 'ログイン前トップページ' do
    context "ページが正しく表示される" do
      before do
        get root_path
      end

      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
end