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

##每次上課的最後一行：存檔
saveRDS(flights,file = "data/flight.rds" )

##每次上課的第一行：引入之前寫完的語法就好
flights <- readRDS("data/flight.rds")



##import json
filepath = flights$data[[1]]$file
flightsData <- jsonlite::fromJSON(filepath)

flights$data[[1]]$data_frame <- flightsData



#type and class -----
typeof(flightsData)

class(flightsData)

View(flightsData)
View(flights)


##假設要取某個值
flightsData[[3, "ScheduleStartDate"]]
flightsData[[3, "AirlineID"]]

flightsData[c(2,4), c("AirlineID", "FlightNumber")]
flightsData[c(2,4)]
flightsData[c(3), c("AirlineID", "FlightNumber")]


#feature by feature
names = c("John", "Mary", "Tom")
ages = c(30, 25, 35)
isMarried = c(TRUE, FALSE, TRUE)

# feature by feature stacking
data_fbf_list <- list(
  name = names, 
  age = ages, 
  married = isMarried)

##這裡沒學到 完蛋
class(data_obo)
class(data_fbf)

class(data_fbf_list)
data_fbf_list[1,c(1,3)]



##存檔-----
saveRDS(flights, "data/flights.rds")


