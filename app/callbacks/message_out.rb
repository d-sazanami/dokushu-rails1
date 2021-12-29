class MessageOut
  def self.before_validation(obj)
    puts "#{obj.model_name} before validation!!"
  end

  def self.before_save(obj)
    puts "#{obj.model_name} before save!!"
  end
end