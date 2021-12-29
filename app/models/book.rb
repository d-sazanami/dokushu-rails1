class Book < ApplicationRecord
  validates :title, presence: true
  validates :description, absence: true, unless: :title?
  validates :description, length: {maximum:100}
  after_find :find_message
  after_initialize :initialize_message
  before_save MessageOut
  before_validation MessageOut

  private
  def find_message
      puts "readed"
  end
  
  def initialize_message
      puts "initialized"
  end
  
end
