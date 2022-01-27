class Borrow < ApplicationRecord
  validates :accept, acceptance: true
end
