class Borrow < ApplicationRecord
  validates :accept, acceptance: true
  belongs_to :student
end
