class Recruitment < ApplicationRecord
  belongs_to :user
  belongs_to :campsite
  has_many :participations

  attachment :image

  with_options presence: true do
    validates :title
    validates :content
    validates :capacity
    validates :scheduled_end_date
    validates :scheduled_end_date
  end

  validates :title, length: {maximum: 35}
  validates :content, length: {maximum: 350}
  validates :capacity, numericality: { only_integer: true, greater_than: 0, less_than: 31}
end