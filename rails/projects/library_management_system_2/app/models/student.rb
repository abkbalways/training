class Student < ApplicationRecord
  validates :id, comparison: {greater_than: 100}
  validates :name, presence: true, length: {maximum: 25}
  validates :name, format: {with: /\A[A-Z a-z]+\z/}
  validates :city, format: {with: /\A[A-Z a-z]+\z/}, length: {maximum: 20}, allow_nil: true
  validates :mobile, presence: true, if: :section?
  validates :mobile, length: {maximum: 10,minimum:10, too_long:"your number should not be greater than 10 digits", too_short:"Your number should not be lesser than 10 digits"}, allow_nil: true
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}
  def section?
    section_id == 3 || section_id == 4
  end
  validates :dob, presence: true
  belongs_to :section
  #has_many :issues
  #has_many :books, through: :issues
  has_and_belongs_to_many :books

  after_validation :successfully_validation
  before_validation :remove_whitespaces
  after_create :display_student_age
  
  
  def successfully_validation
    puts "You are validated successfully"
  end

  def remove_whitespaces
    name.strip!
  end
  
  def display_student_age
    if self.dob.present?
      age = Date.today.year - dob.year
      puts "======Age of Student is #{age} ======="
    else
      puts "Age can not be calculated without date of birth"
    end
  end

end
