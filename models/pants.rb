class Pants
  def initialize(num)
    @num =num
    @shorts = {
      0 => {name: "White Shorts",
        img: "images/WestIsDeadSP13-125_copy_1024x1024.jpg"
        },
      1 => {name: "Black Shorts",
        img: "images/topman-black-chino-shorts-65.jpg"
        },
      2 => {name: "Blue Shorts",
        img: "images/blue-Nike-basketball-shorts.jpg"
        },
      3 => {name: "Green Shorts",
        img: "images/green_shorts"
        },
      4 => {name: "Red Shorts",
        img: "images/TR9712LRE-detail.jpg"
        }
      }
        
     @pants = {
       0 => {name: "White Jeans",
         img: "images/white-jeans-men-levis.jpg"
        },
       1 => {name: "Black Jeans",
         img: "images/278488_main.jpg"
        },
       2 => {name: "Blue Jeans",
         img: "images/mens-blue-jeans-9oztc41z.jpg"
        },
       3 => {name: "Gray Jeans",
         img: "images/the-v76-skinny-fit-jeans-mens-grey-02068883.jpg"
        },
       4 => {name: "Khakis",
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