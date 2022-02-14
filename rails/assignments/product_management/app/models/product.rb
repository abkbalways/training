class Product < ApplicationRecord
  validates :name, presence: true,length: {maximum:15}, format: {with: /\A[A-Z 0-9a-z]+\z/}
  validates :price, presence: true, numericality: true, comparison: {less_than: 100000}
  before_validation :name_capitalize
  belongs_to :user
  self.per_page = 2

  def name_capitalize
    self.name = name.strip.capitalize
  end
end
