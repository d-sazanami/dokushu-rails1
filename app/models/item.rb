class Item < ApplicationRecord
  after_validation :after_valid_message 
  before_validation :before_valid_message
  after_create :after_create_message 
  after_save :after_save_message 
  before_create :before_create_message
  before_save :before_save_message
  around_create :around_create_message
  around_save :around_save_message
  before_update :before_update_message
  after_update :after_update_message
  around_update :around_update_message

  private
  def after_valid_message 
    puts "validation end"
  end

  def before_valid_message
    puts "validation start"
  end
  
  def after_create_message
    puts "create end"
  end

  def after_save_message 
    puts "save end"
  end
  
  def before_create_message
    puts "create start"
  end
  
  def before_save_message
    puts "save start"
  end
  
  def around_create_message
    puts "around create start"
    yield
    puts "around create end"
  end
  
  def around_save_message
    puts "around save start"
    yield
    puts "around save end"
  end
  
  def before_update_message
    puts "update start"
  end
  
  def after_update_message
    puts "update end"
  end
  
  def around_update_message
    puts "around update start"
    yield
    puts "around update end"
  end
  
end
