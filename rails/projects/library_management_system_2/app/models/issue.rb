class Issue < ApplicationRecord
  validates :book_id, presence: true
  validates :student_id, presence: true
  belongs_to :book
  belongs_to :student
  validate :issue_book

  def issue_book
    if Student.find(student_id).books.ids.include?(book_id)
      errors.add(:book_id, 'Student has that book !')
    end
  end
end
