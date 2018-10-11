class Review < ApplicationRecord
  belongs_to :book

  validates :title, :comment, presence: true
  validates :comment, length: { maximum: 1000 }
end
