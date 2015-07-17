class Shirt
  def initialize(num)
    @num =num
      @shirts = {
        0 => {name: "White Shirt",
        img: "images/woman-white-shirt.jpg"
        },
      1 => {name: "Black Shirt",
        img: "images/81IYdjUD%2BrL._UL1500_.jpg"
        },
        2 => {name: "Blue Shirt",
        img: "images/image_87310.jpg"
        },
        3 => {name: "Green Shirt",
        img: "images/tumblr_nibeiyGZYU1u7zo6ko1_500.jpg"
        },
      4 => {name: "Gray Shirt",
            img: "313598e1e2ac1a7ab2879108aa9d4407.jpg"
        },
        5 => {name: "Red Shirt",
              img: "12996914324027A.jpg"
        }
      }
    
          @tshirts = {
            0 => {name: "White T-Shirt",
        img: "images/tumblr_mdwv2lhPYk1rur4ojo1_500.jpg"
        },
      1 => {name: "Black T-Shirt",
        img: "images/tumblr_ljn6eduBNd1qhpfzn.jpg"
        },
            2 => {name: "Blue T-Shirt",
        img: "images/09B-KMMN5601-R3.jpg"
        },
      3 => {name: "green tshirt",
        img: "images/10355front-0.jpg"
        },
      4 => {name: "Gray T-Shirt",
        img: "images/shirt_gray_1.jpg"
        },
            5 => {name: "Red T-Shirt",
          img: "images/Plain Red t Shirt in Pakistan-800x800.jpg"
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

