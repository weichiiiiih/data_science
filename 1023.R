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


bloodTypes <- c("AB", "AB", "A", "B", "A", "A", "B", "O", "O", "AB")


householdIncomes <- c(
  "middle income", "high income", "middle income", "low income",
  "middle income", "high income", "high income", "low income",
  "high income", "middle income", "high income", "middle income"
)


class(householdIncomes)


householdIncomes[[1]]

householdIncomes[[1]] < "high income"
householdIncomes[[1]] < "low income"


# comparing two strings 
"high income" < "middle income"

"h" < "m"

#parcing----
#tell your computer to understand your value more accurately


householdIncome #character

fct_householdIncome <- factor(householdIncomes) #parse into factor

ord_fct_householdIncome <- ordered(householdIncomes, levels = c("low income", "middle income", "high income"))

class(fct_householdIncome)

class(ord_fct_householdIncome) 


householdIncomes[[1]] 
householdIncomes[[1]] < "high income"
ord_fct_householdIncome[[1]] 
ord_fct_householdIncome[[1]] < "high income"


#parse airlineID
class(flightsData$AirlineID)

factor(flightsData$AirlineID)

class(flightsData$AirlineID)

flightsData$AirlineID <- factor(flightsData$AirlineID)
class(flightsData$AirlineID)

flights$data[[1]]$data_frame <- flightsData


saveRDS(flights, "data/flights_2.rds")
