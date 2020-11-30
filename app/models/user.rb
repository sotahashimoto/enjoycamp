class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments
  has_many :favorites
  has_many :recruitments
  has_many :participations

  attachment :image

  with_options presence: true do
    validates :name
  end

  validates :name, length: {maximum: 15}
  validates :favorite_place, length: {maximum: 17}
  validates :introduction, length: {maximum: 100}

  # いいねしたか判別
  def already_favorited?(campsite)
    self.favorites.exists?(campsite_id: campsite.id)
  end

  # 参加希望するか判別
  def already_participationed?(recruitment)
    self.participations.exists?(recruitment_id: recruitment.id)
  end
end