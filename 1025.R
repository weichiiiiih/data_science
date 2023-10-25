
flights = readRDS("C:/Users/NTPU Computer Center/Desktop/data/flights.rds")

View(flights)
str(flights)

flightsData <- flights$data[[1]]$data_frame


#look at your data ----
dplyr::glimpse(flights$data[[1]]$data_frame)


head(flights$data)

class(flightsData$AirlineID)

unique(flightsData$AirlineID)

"1"+3



householdIncomes <- c(
  "middle income", "high income", "middle income", "low income",
  "middle income", "high income", "high income", "low income",
  "high income", "middle income", "high income", "middle income"
)

class(householdIncomes)
householdIncomes[[1]] < "high income"

factor(flightsData$AirlineID)
class(flightsData$AirlineID)
flightsData$AirlineID <- factor(flightsData$AirlineID)
class(flightsData$AirlineID)

fct_householdIncome <- factor(householdIncomes)

ord_fct_householdIncome <- ordered(householdIncomes, levels = c("low income", "middle income", "high income"))

fct_householdIncome[[1]] < "high income"
ord_fct_householdIncome[[1]] < "high income"



levels(fct_householdIncome)












