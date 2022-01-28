class Section < ApplicationRecord
  validates :name, presence: true
  validates :head_of_section_id, presence: true
  has_many :students
  belongs_to :head_of_section
end
