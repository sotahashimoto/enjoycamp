class Campsite < ApplicationRecord
  has_many :comments
  has_many :favorites
  has_many :recruitments

  attachment :image

  with_options presence: true do
    validates :name
    validates :postcode
    validates :address
  end

  validates :name, length: {maximum: 17}
  validates :postcode, length: {maximum: 7}
  validates :address, length: {maximum: 25}

  # Googlemap表示
  # addressを登録した際にgeocoderが緯度、経度のカラムにも自動的に値を入れてくれる
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def self.search(search)
    Campsite.where(['name LIKE ? OR address LIKE ?', "%#{search}%", "%#{search}%"])
  end
end