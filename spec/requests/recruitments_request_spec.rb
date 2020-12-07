require 'rails_helper'

RSpec.describe "Recruitments", type: :request do
  describe "recruitmentページ" do
    let(:user) { create(:user) }
    let(:campsite) { create(:campsite) }
    let(:recruitment) { create(:recruitment) }

    context "ログインしている場合" do
      before do
        sign_in user
      end

      it 'index正しく表示されること' do
        get public_campsite_recruitments_path(campsite.id)
        expect(response.status).to eq 200
      end
    end
  end
end