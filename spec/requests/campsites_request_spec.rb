require 'rails_helper'

RSpec.describe "Campsites", type: :request do
  describe "campsiteページ" do
    let(:user) { create(:user) }
    let(:campsite) { create(:campsite) }

    context "ログインしている場合" do
      before do
        sign_in user
      end

      it 'index正しく表示されること' do
        get public_campsites_path
        expect(response.status).to eq 200
      end

      it 'show正しく表示されること' do
        get public_campsite_path(campsite.id)
        expect(response.status).to eq 200
      end
    end
  end
end