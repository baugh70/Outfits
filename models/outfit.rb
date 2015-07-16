class Outfit
  attr_reader = :zip_code, :occasion, :gender
  
  def initialize(zip_code)
    @zip_code = zip_code
#     @occasion = occasion
#     @gender = gender
  end
  
  def temp
    80
  end
  
  def hot_or_cold
    if(temp >= 70)
      return "hot"
    else
      return "cold"
    end
  end
  
  def get_hat 
    r = Random.new
    hat = Hat.new(r.rand(0..1))
    hat.hat
  end
  
  def get_pants
     r = Random.new
    if hot_or_cold == "hot"
      shorts = Pants.new(r.rand(0..1))
      return shorts.shorts
    else
      pants = Pants.new(r.rand(0..1))
      return pants.new
    end
  end
  
  def get_shirt
     r = Random.new
    if hot_or_cold == "hot"
      tshirt = Shirt.new(r.rand(0..1))
      return tshirt.tshirt
    else
      shirt = Shirt.new(r.rand(0..1))
      return shirt.shirt
    end
  end
  
  def get_shoes
    r = Random.new 
    shoes = Shoes.new(r.rand(0..1))
    shoes.shoes
  end
  
  def finalize
    @outfit = {
      :hat => get_hat,
      :shirt => get_shirt,
      :pants => get_pants,
      :shoes => get_shoes
      }
    
    @outfit
  end
  
  
  
end