#讀取flights檔案----
flights = readRDS("data/flights.rds")

# check the progress object structure
str(flights)

#retreive data_frame for analysis----
flightsData <- flights$data[[1]]$data_frame
flights[["data"]][[1]][["data_frame"]]

#for list, $name =  [["name"]] 要有雙引號ㄛ


#data frame vs. list ----
grades <- data.frame(
  student = c("Alice", "Bob", "Charlie", "David", "Eve"),
  midterm = c(95, 80, 70, 60, 75),
  final = c(90, 85, 75, 95, 80)
)



grades_list <- list(
  student = c("Alice", "Bob", "Charlie", "David", "Eve"),
  midterm = c(95, 80, 70, 60, 75),
  final = c(90, 85, 75, 95, 80)
)


grades_list$student
grades_list[["student"]]


grades$student
grades[["student"]]




grades[, "student"] # retrieve student column
grades[, c("student", "midterm")] # retrieve student and midterm columns
grades[c(1,3), "student"] # retrieve student column for rows 1 and 3
grades[c(1,3), c("student", "midterm")] # retrieve student and midterm columns for rows 1 and 



#glimpse data----
install.packages("dplyr")
dplyr::glimpse(flights$data[[1]]$data_frame)

flightsData[c(358,408), c("AirlineID","ArrivalTime")]


# check elements names 
names(flightsData)

class(flightsData$AirlineID)
class(flightsData$ScheduleStartDate)

head(flightsData$AirlineID) #檢查前六個
head(flightsData$ScheduleStartDate) 

vec <- c("A","B","C")
typeof(vec)
class(vec)




