class Hat
  def initialize(num)
    @num = num   
    hats ={
      0 => {name: "NBA snapback"
           img: "img"
        },
      1 => {name: "NFL snapback"
           img: "img"
        },
      2 => {name: "Mitchell and Ness snapback"
            img: "img"
        },
      3 => {name: "Fedora"
            img: "img"
        },
      4 => {name: "Bucket hat"
            img: "img"
        }
      }
  end
  
  def get_hat
    hats[num]
  end
end