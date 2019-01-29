library(maptools)
library(raster)
library(plyr)
library(ggplot2)
library(rgdal)


Qazaqia<-getData("GADM", country="KAZ", level=1)

Qazaqia_UTM <- spTransform(Qazaqia, CRS("+init=EPSG:2830"))  

NAME_1<-Qazaqia_UTM@data$NAME_1
count<-sample(1:1000,14)     #or any other data you can associate with admin level here

count_df<-data.frame(NAME_1, count) 

Qazaqia_UTM@data$id <- as.numeric(rownames(Qazaqia_UTM@data))
Qazaqia_UTM@data <- join(Qazaqia_UTM@data, count_df, by="NAME_1")
Qazaqia_df <- fortify(Qazaqia_UTM)
Qazaqia_df <- join(Qazaqia_df,Qazaqia_UTM@data, by="id")

ggplot() + 
  geom_polygon(data = Qazaqia_df, aes(x = long, y = lat, group = group, fill =
                                       count), color = "black", size = 0.25) +
  theme(aspect.ratio=.65)


