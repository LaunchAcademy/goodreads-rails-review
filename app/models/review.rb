class Review < ApplicationRecord
  belongs_to :book
  # validates :book_id, presence: true

  validates :rating, presence: true
  validates :body, presence: true
end
