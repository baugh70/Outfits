class Shirt
  def initialize(num)
    @num =num
      @shirts = {
      0 => {name: "white shirt",
        img: "images/woman-white-shirt.jpg"
        },
      1 => {name: "black shirt",
        img: "images/81IYdjUD%2BrL._UL1500_.jpg"
        },
      2 => {name: "blue shirt",
        img: "images/image_87310.jpg"
        },
      3 => {name: "green shirt",
        img: "images/tumblr_nibeiyGZYU1u7zo6ko1_500.jpg"
        },
      4 => {name: "gray shirt",
            img: "313598e1e2ac1a7ab2879108aa9d4407.jpg"
        },
      5 => {name: "red shirt",
              img: "www.143shopping.com-143Shopping-565-32.jpg"
        }
      }
    
          @tshirts = {
      0 => {name: "white tshirt",
        img: "images/tumblr_mdwv2lhPYk1rur4ojo1_500.jpg"
        },
      1 => {name: "black tshirt",
        img: "images/tumblr_ljn6eduBNd1qhpfzn.jpg"
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

