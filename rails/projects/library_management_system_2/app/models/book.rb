class Book < ApplicationRecord
  belongs_to :author
  validates :id, comparison: {greater_than: 1000}, uniqueness: true
  validates :name, presence: true, length: {maximum: 50}
  validates :isbn, length: {is: 6}, uniqueness: true, allow_nil: true
  validates :author_id, presence: true
  validates :price, presence: true, numericality: true
  validates :copies, presence: true, numericality: {only_integer: true}
end
