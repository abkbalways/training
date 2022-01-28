class Issue < ApplicationRecord
  validates :book_id, presence: true
  validates :student_id, presence: true
end
