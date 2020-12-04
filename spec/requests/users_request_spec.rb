require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:user) { create(:user) }
  # ログインしていないユーザー
  let(:other_user) { create(:user) }

  describe "ログインページ(GET /sign_in)が" do
    it '正しく表示されること' do
      get new_user_session_path
      expect(response).to have_http_status(200)
    end
  end

  describe "ログイン(POST /sign_in)に" do
    # 存在する(DBに登録されている)ユーザー
    let (:authenticated_user) { create(:user) }
    # 存在しない(DBに登録されていない)ユーザー
    let (:unauthenticated_user) { build(:user) }
    let (:req_params) { { user: { email: user.email, password: user.password } } }

    context '存在するユーザでログインすると' do
      let (:user) { authenticated_user }

      it '成功すること' do
        post user_session_path, params: req_params
        expect(response).to have_http_status(302)
      end
      it 'ログイン後キャンプ場一覧ページにリダイレクトされること' do
        post user_session_path, params: req_params
        expect(response).to redirect_to public_campsites_path
      end
    end

    context '存在しないユーザでログインすると' do
      let (:user) { unauthenticated_user }

      it '失敗すること' do
        post user_session_path, params: req_params
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "ユーザーの編集を更新(PUT #update)" do
    let(:user_params) { { name: "編集後ユーザー名" } }

    context "ログインしている場合" do
      before do
        sign_in user
      end

      it "リクエストが成功すること" do
        put public_user_path user.id, user: user_params
        expect(response.status).to eq 302
      end
      it "更新が成功すること" do
        put public_user_path user.id, user: user_params
        expect(user.reload.name).to eq "編集後ユーザー名"
      end
      it "ユーザー編集ページへリダイレクトすること" do
        put public_user_path user.id, user: user_params
        expect(response).to redirect_to public_user_path user.id
      end
    end
  end

  describe "新規登録ページ(GET /sign_up)が" do
    it "正しく表示されること" do
      get new_user_registration_path
      expect(response).to have_http_status(200)
    end
  end

  describe "新規登録(POST /sign_up)で" do
    let (:req_params) { { user: { name: '新規ユーザー', email: 'test@test.co.jp', password: 'password', password_confirmation: 'password' } } }

    context '全て正しい情報を入力した場合' do
      it '登録に成功すること' do
        post user_registration_path, params: req_params
        expect(response).to have_http_status(302)
      end

      it 'キャンプ場一覧ページににリダイレクトされること' do
        post user_registration_path, params: req_params
        expect(response).to redirect_to public_campsites_path
      end
    end
  end
end