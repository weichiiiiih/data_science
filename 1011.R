#my economic grande -----
myEconomicGrande <- c(100,99)
myMusicGrande <- c(10,9)


#import jason file----

flights <- jsonlite::fromJSON("data/international_flights.json")
View(flights)
