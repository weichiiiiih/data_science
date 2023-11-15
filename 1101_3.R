flightsData = readRDS("C:/Users/NTPU Computer Center/Desktop/data/flightsData_week8.rds")

dplyr::glimpse(flightsData)

flightsData$ScheduleStartDate |> head()

lubridate::ymd(flightsData$ScheduleStartDate) -> flightsData$ScheduleStartDate



lubridate::ymd_hm("2023-10-23 15:00",tz="Asia/Shanghai")




paste(
  flightsData$ScheduleStartDate,
  flightsData$DepartureTime
) ->  departuretime
  
  


# 1. which ScheduleStartDate need plus 1
## Find out which DepartureTime has +1 at the end
whichNeedPlus1 <- grep(pattern = "+1", flightsData$DepartureTime, fixed = TRUE)

whichNeedPlus1




  