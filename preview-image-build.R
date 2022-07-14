library(magick)

overlay_img <- function(input, output = NULL, opacity = 37, color = "black"){
  
  raw_img <- image_read(input)
  
  
  img_overlay <- image_colorize(raw_img, opacity = opacity, color = color)
  
  
  if(is.null(output)){
    img_overlay |> 
      image_resize(400)
  } else{
    image_write(img_overlay, output)
  }
}

overlay_img("https://www.akc.org/wp-content/uploads/2020/05/Boston-Terrier-head-portrait-outdoors-500x486.jpg")
