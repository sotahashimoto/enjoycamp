class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments
  has_many :favorites
  has_many :recruitments

  # いいね判別
  def already_favorited?(campsite)
    self.favorites.exists?(campsite_id: campsite.id)
  end
end