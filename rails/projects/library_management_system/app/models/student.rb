class Student < ApplicationRecord
  #validates :name, presence: true
  #validates :student_id, comparison: {greater_than: 100}
  #validates :city, exclusion: {in: %w(palwal hodal), message: "%{value} is not allowed."}
  #validates :name, format: {with: /\A[A-Za-z]+\z/ , message: "only letters allowed"}
  #validates :section_id, inclusion: {in: %w(C1 C2 C3 C4 C5), message: "%{value} is not valid section id"}
  #validates :name, length: {minimum:3, too_short: "%{count} characters minimum allowed"}
  #validates :mobile, length: {is:10, message: "%{count} numbers is required"}
  #validates :city, length: {maximum:10, too_long: "%{count} characters is maximum allowed"}
  #validates :student_id, numericality: true
  #validates :name, uniqueness: true, presence: true, strict: NameGenerationEception
  #validates :mobile, presence: true, if: :class_is_c1?
  #def class_is_c1?
    #section_id == "C1"
  #end
  #include ActiveModel::Validations
  #validates_with MyValidator
  belongs_to :section
end
