class Student < ApplicationRecord
  validates :id, comparison: {greater_than: 100}
  validates :name, presence: true, length: {maximum: 25}
  validates :name, format: {with: /\A[A-Z a-z]+\z/}
  validates :city, format: {with: /\A[A-Z a-z]+\z/}, length: {maximum: 20}, allow_nil: true
  validates :mobile, length: {is: 10}, presence: true, if: :section?
  def section?
    section_id == 3 || section_id == 4
  end
  validates :dob, presence: true
  belongs_to :section
  has_many :issues
  has_many :books, through: :issues

end
