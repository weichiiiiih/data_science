
flightsBata <- readRDS("/Users/weichiiiiih/Desktop/data_science/flights_exam.rds")
View(flightsBata)

flights$data[[1]]["meta"][["source_link"]]
flights[["data"]][[1]]["meta"][["source_link"]]
flights["data"][[1]][["meta"]][["source_link"]]
flights[["data"]][1][["meta"]][["source_link"]]

fileLocation <- flights$data[[1]]$file
fileLocation <- "C:/data/flights.rds"
View(fileLocation)

target <- 
  sample(c("foodpandaMenu_r9uz.json", "foodpandaMenu_r9vy.json", "foodpandaMenu_r9wg.json"),1)
chosenJson <-paste0("https://raw.githubusercontent.com/tpemartin/112-1-programming-for-data-science/main/data/"
                    ,target)
shop <- jsonlite::fromJSON(chosenJson)
View(target)
View(shop)

shop$data[["menus"]][["menu_categories"]][[1]]
shop[["data"]][["menus"]][["menu_categories"]][[1]][["products"]][[1]]

dplyr::glimpse(shop$data[["menus"]][["menu_categories"]][[1]][["products"]][[2]])

names(shop$data[["menus"]])

head(shop$data[["menus"]][["menu_categories"]][[1]])

table(shop$data[["menus"])

grades_list <- list(
  student = c("Alice", "Bob", "Charlie", "David", "Eve"),
  midterm = c(95, 80, 70, 60, 75),
  final = c(90, 85, 75, 95, 80)
)

grades[["student"]]
grades[["midterm"]]



