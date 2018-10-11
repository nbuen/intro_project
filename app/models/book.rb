class Book < ApplicationRecord
  belongs_to :genre

  validates :book_title, :author, :genre_name, presence: true
  validates :book_title, uniqueness: true
end
