flights <- readRDS("data/flights_week10.rds")

flightsData <- flights$data[[1]]$data_frame

dplyr::glimpse(flightsData)

##把ScheduleStartDate的character變成time



        
# Get unique time zones
unique_time_zones <- unique(flightsData$DepartureTimeZone)
View(flightsData$DepartureTimeZone)
View(unique_time_zones)

# Count the number of unique time zones
num_time_zones <- length(unique_time_zones)

# Display the number of time zones
cat("Number of time zones:", num_time_zones, "\n") ##只是在下面直接跟你說有幾個時區

# Count observations per time zone
observations_per_time_zone <- table(flightsData$DepartureTimeZone)
View(flightsData$DepartureTimeZone)
View(observations_per_time_zone)

# Display observations per time zone
cat("Observations per time zone:\n")
print(observations_per_time_zone)



flightsData$DepartureTimeZone |>
  table() |>
  sort(decreasing =  T) ->tb_departureTimeZone

flightsData$dataSummary$DepartureTimeZone <- tb_departureTimeZone


        
length(tb_departureTimeZone)
        

# 3. parse time with time zone
## split flightsData according to its timezone 將時區全部分開
flightsData |> split(flightsData$DepartureTimeZone) -> split_flightsData

#全部都是america chicago的資料
x =1 
split_flightsData[[x]] |> dplyr::glimpse() #這兩個方式都可以
split_flightsData[[x]] |> View()

# The easiest way to get lubridate is to install the whole tidyverse:
install.packages("tidyverse")

# Alternatively, install just lubridate:
install.packages("lubridate")

# Or the the development version from GitHub:
# install.packages("devtools")
devtools::install_github("tidyverse/lubridate")



flightsData |> split(flightsData$DepartureTimeZone) ->split_flightsData

# for each sub data frame
.x=1 # say the first one
# we want to parse the time
split_flightsData[[.x]]$DepartureTime <- lubridate::ymd_hm(split_flightsData[[.x]])DepartureTime, tz = split_flightsData



#現在要parse時間日期
split_flightsData[[.x]]$DepartureTimeZone <- 
lubridate::ymd_hm(
  split_flightsData[[.x]]$DepartureTime,
dplyr::glimpse(flightsData)




#for every .x
flightsData <- flights$data[[1]]$data_frame

flightsData |>
  dplyr::group_by(DepartureTimeZone) |> # split and do the following on each sub data frame
  dplyr::mutate(
    DepartureTime = lubridate::ymd_hm(DepartureTime, tz = DepartureTimeZone[[1]]) # parse time
  ) |>
  dplyr::ungroup() -> # unsplit the data frame
  flightsData2


flightsData |> 
  split(flightsData$AirlineID) ->


  ##complete step
  flightsData |>
  dplyr::group_by(DepartureTimeZone) |> # split and do the following on each sub data frame
  dplyr::mutate(
    DepartureTime = lubridate::ymd_hm(DepartureTime, tz = DepartureTimeZone[[1]]) # parse time
  ) |>
  dplyr::ungroup() -> # unsplit the data frame
  flightsData2

#存在flights
flights$data[[1]]$data_frame <- flightsData2


saveRDS(flights, file = "data/flights_week10_after.rds"


        