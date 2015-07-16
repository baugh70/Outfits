class Sneakers
  def initialize(num)
    @num =num
    sneakers ={
      0 => {name: "Sperrys"
           img: "img"
           }, 
      1 => {name: "Jordans"
        img: "img"
        }, 
      2 =>  {name: "Nikes"
            img: "img"
        }, 
      3 => {name: "Timbs"
            img: "img"
        },
      4 => {name: "Running sneakers"
            img: "img"
        }, 
      5 => {name: "Adidas"
            img: "img"
        } 
      }
  end
  
  def sneakers
    sneakers[num]
  end
 end