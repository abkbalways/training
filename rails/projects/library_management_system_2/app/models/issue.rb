class Issue < ApplicationRecord
  validates :book_id, presence: true
  validates :student_id, presence: true
  belongs_to :book
  belongs_to :student
end
