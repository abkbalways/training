class HeadOfSection < ApplicationRecord
  validates :name, presence: true, format: {with: /\A[A-Z . a-z]+\z/ , message: "only letters allowed"}
  validates :name, length: {maximum: 25}
  
  has_one :section
  
end
