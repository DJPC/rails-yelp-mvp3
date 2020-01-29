class Review < ApplicationRecord
# A review must have a parent restaurant.
  belongs_to :restaurant

# A review must have content and a rating.
  validates :content, presence: :true
# The rating should be a number between 0 and 5.
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
