class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true
  validates :rating, inclusion: 0..5
  validates :rating, numericality: true
  validates :content, presence: true
end
