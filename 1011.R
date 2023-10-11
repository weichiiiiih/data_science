#my economic grande -----
myEconomicGrande <- c(100,99)
myMusicGrande <- c(10,9)


#import jason file----

flights <- jsonlite::fromJSON("data/international_flights.json")
View(flights)


##data information -----
data1 <- list(
  file = "data/international_flights.json", ##紀錄資料路徑
  meta = list( ##記錄資料訊息
    name = "國際航空定期時刻表",
    source_link = "https://data.gov.tw/dataset/161167") ##紀錄資料來源
)

flights <- list(
  data = list(data1)
)

data1$file
data1$meta$name
data1$meta$source_link

##data practice


data2$file_place
data2$information$name
data2$information$source_link

data2 <- list(
  file_place = "data/international_flights.json",
  information = list(
    name = "國際航空定期時刻表",
    source_link ="https://data.gov.tw/dataset/161167") 
  
)


#flights$data[[1]] #給我data的第一個資訊
plane = list(
  data = list (data1)
)

View(plane)


saveRDS(flights,file = "data/flight.rds" )














