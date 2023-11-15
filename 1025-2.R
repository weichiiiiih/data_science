flights = readRDS("C:/Users/NTPU Computer Center/Desktop/data/flights.rds")

flightsData <- flights$data[[1]]$data_frame

dplyr::glimpse(flightsData)

#summarize airlineID----
levels(flightsData$AirlineID) |> length()

c(29,23,1,17) |> sum()

c(1,2,2,4,4,6,6) |> table()


flightsData$AirlineID |> table() -> tb_AirlineID

class(tb_AirlineID)
typeof(tb_AirlineID)


levels(flightsData$AirlineID )


tb_AirlineID |> sort(decreasing = TRUE)
sort(tb_AirlineID, decreasing = TRUE)




