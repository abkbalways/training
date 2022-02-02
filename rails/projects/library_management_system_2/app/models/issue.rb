class Issue < ApplicationRecord
  validates :book_id, presence: true
  validates :student_id, presence: true
  belongs_to :book
  belongs_to :student
  validate :issue_book, on: :create
  before_destroy :validating_return
  after_destroy :thanks_you_message
  after_update :count_book

  def validating_return
    if self.return_date == nil || ((self.return_date - self.issue_date)/(60*60*24)).floor > 15
      errors.add(:base, "Can't be destroy")
      puts "#{self.student.name} don't return book #{self.book.name } till now or #{self.student.name} has some fine !"
      throw :abort
    end
  end

  def thanks_you_message
    puts "Thanks You #{self.student.name} for return book #{self.book.name} at before or on time !"
  end

  def count_book
    puts "Now Remaining Books on you : #{self.student.books.count}"
  end

  def issue_book
    if Student.find(student_id).books.ids.include?(book_id)
      errors.add(:book_id, 'Student has that book !')
    end
  end
end
