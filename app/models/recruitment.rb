class Recruitment < ApplicationRecord
  belongs_to :user
  belongs_to :campsite
  has_many :participations

  attachment :image

  with_options presence: true do
    validates :title
    validates :content
    validates :capacity
    validates :scheduled_start_date
    validates :scheduled_end_date
  end

  validates :title, length: {maximum: 35}
  validates :content, length: {maximum: 350}
  validates :capacity, numericality: { only_integer: true, greater_than: 0, less_than: 31}

  validates :scheduled_start_date, timeliness: { on_or_after: Date.tomorrow }

  validate :start_end_check

  # 終了日が開始日の前日付にならないようにする
  def start_end_check
    return true if scheduled_start_date.blank? || scheduled_end_date.blank?
    return true if scheduled_start_date < scheduled_end_date
    errors.add(:scheduled_end_date, "の日付を正しく選択してください。")
    false
  end
end