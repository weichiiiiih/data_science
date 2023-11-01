flights = readRDS("C:/Users/NTPU Computer Center/Desktop/data/flights.rds")
flightsData = readRDS("C:/Users/NTPU Computer Center/Desktop/data/flightsData_week8.rds")


data2 <- list(
  meta = list(
    name="航空公司統一代碼",
    source_link ="https://data.gov.tw/dataset/8088"
  ),
  file = "C:/Users/NTPU Computer Center/Desktop/data/airlines.json"
)

flights$data[[2]] <- data2

airlines <-
  jsonlite::fromJSON(
    flights$data[[2]][["file"]]
  )

flights$data[[2]][["data_frame"]] <- airlines

View(flights)
View(flightsData)

# dplyr::left_join example

# two data frames
df1 <- data.frame(
  id = c(1, 2, 3, 4, 5),
  name = c("A", "B", "C", "D", "E")
)

df2 <- data.frame(
  id = c(1, 2, 3, 4, 5, 7),
  score = c(90, 80, 70, 60, 50, 40)
)

# join by id
dplyr::left_join(df1, df2, by = "id")

# join by id
df3 <- data.frame(
  ID = c(1, 2, 3, 4, 5, 7),
  score = c(90, 80, 70, 60, 50, 40)
)

# join by dfID
dplyr::left_join(df1, df3, by = c("id" = "ID"))


dplyr::left_join(
  flightsData, airlines,
  by="AirlineID"
) -> flightsData

flightsData$AirlineName <-
  factor(
    flightsData[["AirlineName"]]
  )

# airportr package has a airports data frame
install.packages("airportr")


airports <- airportr::airports
dplyr::glimpse(airports)

View(airports)



head(airports$Country)
pick_taiwan <- airports$Country == "Taiwan" ##比較是否相同時 用等於等於
pick_taiwan

airports[pick_taiwan, ] |> View()

c(2,4,7)[c(T, F,T)]

airports$IATA[pick_taiwan]


##
dplyr::filter(
  airports,
  Country == "Taiwan"   ##這個是條件,data裡面只想保留這些
) -> airports_taiwan

head(airports_taiwan)




taiwan_IATA <- unique(airports_taiwan$IATA)

pick_departure <- flightsData$DepartureAirportID %in% taiwan_IATA
head(pick_departure)  ##答案是FALSE FALSE FALSE  TRUE  TRUE  TRUE，表示前面幾個是入境的
flightsData[pick_departure, ] |> View()

which(pick_departure) |> head(10)


whichIsDeparture <- which(pick_departure)
flightsData[whichIsDeparture, ] 





##篩出離境的航班中屬於台灣的
flightsData |>
  dplyr::filter(
    DepartureAirportID %in% unique(airports_taiwan[["IATA"]])) -> 
  departure_flightsData




flightsData |>
  dplyr::filter(
    ArrivalAirportID %in% unique(airports_taiwan[["IATA"]])) -> 
  arrival_flightsData


flights$data[[3]] <- list(
  departure_flightsData= departure_flightsData,
  arrival_flightsData = arrival_flightsData
)




flightsData = readRDS("C:/Users/NTPU Computer Center/Desktop/data/flightsData_week8.rds")



saveRDS(flights, file="flights.rds")
