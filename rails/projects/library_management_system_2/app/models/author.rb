class Author < ApplicationRecord
  validates :name, presence: true, format: {with: /\A[A-Z a-z]+\z/ , message: "only letters allowed"}
  validates :name, length: {maximum: 25}
  validates :no_of_published_books, comparison: {less_than: 1000}, allow_nil: true
end
