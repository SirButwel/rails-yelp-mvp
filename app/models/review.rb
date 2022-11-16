class Review < ApplicationRecord
  RATINGS = [1, 2, 3, 4, 5].freeze
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5,
                                  message: 'Invalid rating' }
  validates :rating, numericality: { only_integer: true }
end
