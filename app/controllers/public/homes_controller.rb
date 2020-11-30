class Public::HomesController < ApplicationController
  before_action :redirect_root, only: [:top]

  def top
  end

  def new_guest
    user = User.find_or_create_by!(name: 'ゲスト太郎', favorite_place: "舞洲バーベキューパーク", introduction: "年齢:平成6年男子, キャンプ歴:2019年10月～, 拠点:山陰, テント:サーカスtc、名も無きスクリーンタープ", email: 'guesttest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
      redirect_to public_campsites_top_path
  end

  def redirect_root
    redirect_to public_campsites_top_path if user_signed_in?
  end
end