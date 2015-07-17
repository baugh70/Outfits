class Pants
  def initialize(num)
    @num =num
    @shorts = {
      0 => {name: "white shorts",
        img: "images/WestIsDeadSP13-125_copy_1024x1024.jpg?v=1364583649"
        },
      1 => {name: "black shorts",
        img: "images/topman-black-chino-shorts-65.jpg"
        },
      2 => {name: "blue shorts",
        img: "images/blue-Nike-basketball-shorts.jpg"
        },
      3 => {name: "green shorts",
        img: "images/green_shorts"
        },
      4 => {name: "red shorts",
        img: "images/TR9712LRE-detail.jpg"
        }
      }
        
     @pants = {
       0 => {name: "white jeans",
         img: "images/white-jeans-men-levis.jpg"
        },
       1 => {name: "black jeans",
         img: "images/278488_main?$CrossSellProductPage514$"
        },
       2 => {name: "blue jeans",
         img: "images/mens-blue-jeans-9oztc41z.jpg"
        },
       3 => {name: "gray jeans",
         img: "images/the-v76-skinny-fit-jeans-mens-grey-02068883.jpg"
        },
       4 => {name: "khakis",
         img: "images/mens-new-broken-in-slim-fit-khakis-bandolier-brown.jpg"
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