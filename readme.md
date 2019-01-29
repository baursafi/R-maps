Hi, I am reading the https://r4ds.had.co.nz/. Amazing book and on page 32 Hadley shows how to map New Zealand. 
I wanted to map Kazakhstan and found this awesome article on https://rpubs.com/spoonerf/countrymapggplot2 where the author maps Kenya. 
So it worked. Several things I had to adjust to make it work:
  - EPSG projection is different for Kazakhstan (Qazaqstan). EPSG code is 2830, but even for this point the map is sk
    slightly skewed. So I had to change the aspect ratio to .65 to make it look more recognizable image.
  - Kazakhstan (Qazaqstan) has 14 administrative units, if you pla to show country of your choice, you would need 
    to adjust the number of data to map to the number of administrative units. 

That's it. Feel free to copy and fix the code to your own country keeping in mind you would need to change the projection for your country.

Sincerely,

Baur
