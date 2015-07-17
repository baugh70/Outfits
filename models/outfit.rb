class Outfit
  attr_reader = :zip_code, :occasion, :gender
  
  def initialize(zip_code)
    @weather = Weather.new(zip_code)
    @temp = @weather.temperature
#     @occasion = occasion
#     @gender = gender
    set_hat
    set_pants
    set_shirt
    set_shoes
  end
  
  def hot_or_cold
    if(@temp >= 80)
      return "hot"
    else
      return "cold"
    end
  end
  
  def set_hat 
    r = Random.new
    hat = Hat.new(r.rand(0..4))
    @hat = hat.hat
  end
  
  def set_pants
     r = Random.new
    if hot_or_cold == "hot"
      shorts = Pants.new(r.rand(0..4))
      @pants = shorts.shorts
    else
      pants = Pants.new(r.rand(0..5))
      @pants = pants.new
    end
  end
  
  def set_shirt
     r = Random.new
    if hot_or_cold == "hot"
      tshirt = Shirt.new(r.rand(0..5))
      @shirt=  tshirt.tshirt
    else
      shirt = Shirt.new(r.rand(0..5))
      @shirt = shirt.shirt
    end
  end
  
  def set_shoes
    r = Random.new 
    shoes = Shoes.new(r.rand(0..5))
    @shoes = shoes.shoes
  end
  
  def finalize
    @outfit = {
      :hat => @hat,
      :shirt => @shirt,
      :pants => @pants,
      :shoes => @shoes
      }
    
    @outfit
  end
  
  
  
end