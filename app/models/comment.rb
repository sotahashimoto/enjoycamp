class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :campsite

  # with_options presence: true do
    # validates :content
    # validates :score
  # end
end