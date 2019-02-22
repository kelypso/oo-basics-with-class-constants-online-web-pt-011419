class Shoe 
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  BRANDS = []
  
  def initialize(brand)
    @brand = brand
    if BRANDS.include?(brand) # checks if the brand is unique
    else
      BRANDS << brand # keeps track of unique brands - *why doesn't self work?
    end
  end
  
  def cobble
    puts "Your shoe is as good as new!"
    self.condition = "new"
  end
end