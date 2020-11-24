class Campsite < ApplicationRecord
  has_many :comments
  has_many :favorites
  has_many :recruitments
end