class Section < ApplicationRecord
  validates :name, presence: true
  validates :head_of_section_id, presence: true
  
end
