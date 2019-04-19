#
library(ggplot2)
library(plotly)
sales<- read.csv(file.choose(), header=TRUE, stringsAsFactors = FALSE)
sales

# Circular one
ggplot(sales, aes(x = sales$operating_system,y = sales$average_percentage_viewed ,fill = sales$operating_system )) +
  geom_bar(width = 0.85, stat="identity") +    
  scale_fill_manual("legend", values = c("Android" = "ivory","Chromecast"="indianred1","iOS"="indianred3","Linux"="orangered3","Macintosh"="orangered","Other"="salmon3","PlayStation"="salmon1","Smart TV"="red","Windows"="firebrick1","Windows Mobile"="firebrick","Xbox"="indianred4"))+
  
  # To use a polar plot and not a basic barplot
  coord_polar(theta = "y") +    
  
  #Remove useless labels of axis
  xlab("") + ylab("") +
  
  #Increase ylim to avoid having a complete circle
  ylim(c(0,150))
        
       
  
  

  

