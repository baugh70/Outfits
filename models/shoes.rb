class Shoes
  def initialize(num)
    @num =num
    @sneakers ={
      0 => {name: "Sperrys",
        img: "images/sperrys.jpg"
           }, 
      1 => {name: "Jordans",
        img: "images/Air-Jordans.jpg"
        }, 
      2 =>  {name: "Nikes",
        img: "images/nike-sb-2009-april-sneakers-1.jpg"
        }, 
      3 => {name: "Timbs",
        img: "images/10061024-HERO?$GRID-IMAGE$"
        },
      4 => {name: "Running sneakers",
        img: "images/sneakers.jpg"
        }, 
      5 => {name: "Adidas",
        img: "images/ADIDAS_hardcourt_white.jpg"
        } 
      }
  end
  
  def shoes
    @sneakers[@num]
  end
 end