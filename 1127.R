# demo data 
flightsData <- data.frame(
  ScheduleStartDate = lubridate::ymd(c("2023-10-10", "2023-10-09")),
  DepartureTime = c("10:00+1","12:20"),
  DepartureTimeZone = c("Asia/Bangkok", "Asia/Taipei")
)
dplyr::glimpse(flightsData)

{
# week 8
whichNeedPlus1 <- grep(pattern = "+1", flightsData$DepartureTime, fixed = TRUE) # fixed=TRUE, not treating "+1" as REGEX

departureDate <- flightsData$ScheduleStartDate # create departureDate object
departureDate[whichNeedPlus1] <- departureDate[whichNeedPlus1] + lubridate::days(1) # element values replacement

# week 9
departureTimeString <- flightsData$DepartureTime
# remove "+1" at the end
departureTimeString <- flightsData$DepartureTime
departureTimeString <- sub("+1", "", departureTimeString, fixed = T) # find "+1" pattern and replace it with ""

departureTime <- paste(departureDate, departureTimeString)
flightsData$DepartureTime <- departureTime 

# week 10
flightsData |>
  dplyr::group_by(DepartureTimeZone) |>
  dplyr::mutate(
    DepartureTime = lubridate::ymd_hm(DepartureTime, tz = DepartureTimeZone[[1]])
  ) |>
  dplyr::ungroup() -> flightsData_new

flightsData_new
}


# mini example
{
  # Perform some operations or calculations
  x <- 10
  y <- 20
  result <- x + y
  
} -> output

output



output2 = {
  # Perform some operations or calculations
  x <- 10
  y <- 20
  result <- x + y
}

output2




output3 <- {
  # Perform some operations or calculations
  x <- 10
  y <- 20
  if (x < 20) {
    result <- x + y
  } else {
    result <- 70
  }
}
output3






flightsData <- data.frame(
  ScheduleStartDate = lubridate::ymd(c("2023-10-10", "2023-10-09")),
  DepartureTime = c("10:00+1", "12:20"),
  DepartureTimeZone = c("Asia/Bangkok", "Asia/Taipei")
)

flightsData

{
  # week 8
  whichNeedPlus1 <- grep(pattern = "+1", flightsData$DepartureTime, fixed = TRUE) # fixed=TRUE, not treating "+1" as REGEX
  
  departureDate <- flightsData$ScheduleStartDate # create departureDate object
  departureDate[whichNeedPlus1] <- departureDate[whichNeedPlus1] + lubridate::days(1) # element values replacement
  
  # week 9
  departureTimeString <- flightsData$DepartureTime
  # remove "+1" at the end
  departureTimeString <- flightsData$DepartureTime
  departureTimeString <- sub("+1", "", departureTimeString, fixed = T) # find "+1" pattern and replace it with ""
  
  departureTime <- paste(departureDate, departureTimeString)
  flightsData$DepartureTime <- departureTime
  
  # week 10
  flightsData |>
    dplyr::group_by(DepartureTimeZone) |>
    dplyr::mutate(
      DepartureTime = lubridate::ymd_hm(DepartureTime, tz = DepartureTimeZone[[1]])
    ) |>
    dplyr::ungroup() -> flightsData_new
  
  flightsData_new
}



marriage <-
  jsonlite::fromJSON("https://www.ris.gov.tw/rs-opendata/api/v1/datastore/ODRP053/108", simplifyDataFrame = T)
View(marriage)


earn <-
  jsonlite::fromJSON("https://mopsfin.twse.com.tw/opendata/t187ap05_L.csv", simplifyDataFrame = T)


pay <-jsonlite::fromJSON("file:///Users/weichiiiiih/Downloads/c765f490a06a5dea47b641d01370a7ee_export.json", simplifyDataFrame = T)


readRDS("data_science/b63a53413efde2c17791d2b482babb81_export.json")

industry <- jsonlite::fromJSON("44314524414150faa7ccb2800813f493_export.json", simplifyDataFrame = T)
View(industry)

train <- jsonlite::fromJSON("train.json", simplifyDataFrame = T)
View(train)
