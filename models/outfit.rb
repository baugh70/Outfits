class Outfit
  attr_reader = :zip_code, :occasion, :gender
  
  def initialize(zip_code, occasion, gender)
    @zip_code = zip_code
    @occasion = occasion
    @gender = gender
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
    hat = Hat.new(r.rand(0..9))
    hat
  end
  
  def get_pants
    if hot_or_cold == "hot"
      shorts = Shorts.new
      return shorts.shorts
    else
      pants = Pants.new
      return pants.new
    end
  end
  
  def get_shirt
    if hot_or_cold >= 70
      tshirt = TShirt.new
      return tshirt.shirt
    else
      shirt = Shirt.new
      return shirt.shirt
    end
  end
  
  def get_shoes
    r = Random.new 
    shoes = Shoes.new(r.rand(0..9))
    shoes  
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