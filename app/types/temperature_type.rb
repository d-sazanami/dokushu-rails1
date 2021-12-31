class TemperatureType < ActiveRecord::Type::Integer
  def cast(temperature)
    temp = temperature.split('F')

    if !/\D/.match?(temp[0]) && temp.length < 2
      degree = temp[0].to_f
      super(degree = (degree -32) / 1.8)
    else
      super
    end
    
  end
  
end