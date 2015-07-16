class Shirt
  def initialize(num)
    @num =num
      @shirts = {
      0 => {name: "white shirt",
           img: "img"
        },
      1 => {name: "black shirt",
           img: "img"
        },
      2 => {name: "blue shirt",
            img: "img"
        },
      3 => {name: "green shirt",
            img: "img"
        },
      4 => {name: "gray shirt",
            img: "img"
        },
      5 => {name: "red shirt",
              img: "img"
        }
      }
    
          @tshirts = {
      0 => {name: "white tshirt",
           img: "img"
        },
      1 => {name: "black tshirt",
           img: "img"
        },
      2 => {name: "blue tshirt",
            img: "img"
        },
      3 => {name: "green tshirt",
            img: "img"
        },
      4 => {name: "gray tshirt",
            img: "img"
        },
        5 => {name: "red tshirt",
              img: "img"
        }
      }

  end
  
  def shirt
     @shirts[@num]
  end
  
  def tshirt
    @tshirts[@num]
  end 
end

