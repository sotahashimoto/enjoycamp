class Campsite < ApplicationRecord
  has_many :comments
  has_many :favorites
end