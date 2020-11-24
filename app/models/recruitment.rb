class Recruitment < ApplicationRecord
  belongs_to :user
  belongs_to :campsite
  has_many :participations
end