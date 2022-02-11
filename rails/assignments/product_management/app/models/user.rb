class User < ApplicationRecord
  validates :username, presence: true,length: {maximum:15}, format: {with: /\A[A-Z0-9a-z]+\z/}, uniqueness:true
  validates :password, presence: true, length: {minimum:8}
  validates :dob, presence: true
  validates :password, confirmation: { case_sensitive: true }
  validates :terms, acceptance: true
  has_many :products
  # before_initialize :default_values

  def default_values
    self.id = User.last.id + 1
  end
  
end
