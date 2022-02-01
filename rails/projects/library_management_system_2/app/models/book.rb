class Book < ApplicationRecord
  validates :id, comparison: {greater_than: 1000}, uniqueness: true
  validates :name, presence: true, length: {maximum: 50}
  validates :isbn, length: {is: 6}, uniqueness: true, allow_nil: true
  validates :author_id, presence: true
  validates :price, presence: true, numericality: true
  validates :copies, presence: true, numericality: {only_integer: true}
  belongs_to :author
  has_many :issues
  has_many :students, through: :issues
  #has_and_belongs_to_many :students, -> {where isbn:105698}
  has_many :feedbacks, as: :feedbackable

  #before_save :before_save_message
  #after_save :after_save_message
  before_update :before_update_message
  after_update :after_update_message
  

  after_initialize :default_values

  private
    def default_values
      self.id ||= Book.last.id + 1
    end
  
  def before_update_message
    puts "Before isbn = #{isbn}"
  end
  def after_update_message
   
    puts "New isbn = #{isbn}"
  end

  def before_save_message
    if self.author.present?
      puts "copies = #{copies}"
    else
      puts "Please Enter copies"
    end
  end
  def after_save_message
    puts "author = #{Book.last.author.name}"
  end
end
