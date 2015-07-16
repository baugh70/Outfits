class Pants
  def initialize(num)
    @num =num
    @shorts = {
      0 => {name: "white shorts",
           img: "img"
        },
      1 => {name: "black shorts",
           img: "img"
        },
      2 => {name: "blue shorts",
            img: "img"
        },
      3 => {name: "green shorts",
            img: "img"
        },
      4 => {name: "red shorts",
            img: "img"
        }
      }
        
     @pants = {
       0 => {name: "white jeans",
           img: "img"
        },
       1 => {name: "black jeans",
           img: "img"
        },
       2 => {name: "blue jeans",
            img: "img"
        },
       3 => {name: "gray jeans",
            img: "img"
        },
       4 => {name: "blue jeans",
            img: "img"
        },
       5 => {name: "khakis",
         img: "img"
       } 
    }  
  end
  
  def shorts
     @shorts[@num]
  end
  
  def pants
    @pants[@num]
  end 
end