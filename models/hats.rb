class Hat
  def initialize(num)
    @num = num   
    @hats ={
      0 => {name: "NBA Snapback",
        img: "images/nba_logo_snapback_hats_005.jpg"
        },
      1 => {name: "NFL Snapback",
        img: "images/PICT1993.jpg"
        },
      2 => {name: "Mitchell and Ness Snapback",
        img: "images/img-thing.jpg"
        },
      3 => {name: "Fedora",
        img: "images/IJ554_BLACK_3Q.jpg"
        },
      4 => {name: "Bucket Hat",
        img: "images/Empyre-Shady-Bucket-Hat-_242796.jpg"
        }
      }
  end
  
  def hat
    @hats[@num]
  end
end
