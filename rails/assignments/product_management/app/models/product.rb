class Product < ApplicationRecord
  validates :name, presence: true,length: {maximum:15}, format: {with: /\A[A-Z 0-9a-z]+\z/}
  validates :price, presence: true, numericality: true, comparison: {less_than: 10000}
  belongs_to :user
end
