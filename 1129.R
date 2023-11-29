# Creating a vector of numbers
numbers <- c(1, 2, 3, 4, 5)

# to print each value
print(numbers[[1]])
print(numbers[[2]])
print(numbers[[3]])
print(numbers[[4]])
print(numbers[[5]])
##因為這樣要複製一個程式碼好幾次

# 做一個簡單的迴圈 a from 1-5 
for(a in c(1,2,3,4,5)) #這裡面要是c
{
  print(numbers[[a]])
}


times = 5 
for(a in 1:times) #這裡面要是c
{
  print(numbers[[a]])
}


dataSet <- list(
  list(
    gender="male", height=178, age=32,
    children=list(
      list(gender="male", age=5),
      list(gender="male", age=0))
  ),
  list(
    gender="female", height=166, age=30,
    children=list(
      list(gender="female", age=3))
  ),
  list(
    gender="male", height=170, age=42,
    children=list(
      list(gender="male", age=10),
      list(gender="female", age=8))
  ),
  list(
    gender="male", height=188, age=22,
    children=list()
  ),  
  list(
    gender="male", height=172, age=52,
    children=list(
      list(gender="female", age=25),
      list(gender="female", age=23))
  ),
  list(
    gender="female", height=160, age=42,
    children=list(
      list(gender="female", age=11))
  )
)

View(dataSet)

length(dataSet[[1]]$children)

#pattern
times_2 = 6
times_3 = length(dataSet) 
for(zzz in 1:times_2)
{
  print(length(dataSet[[zzz]]$children))
}

seq_along(dataSet)




#找小孩的迴圈
#先在第一行創造一個變數(如果確定實際數字的話就打數字，不確定就length)，之後把每一次迴圈得到的數值存進去
results <- vector("integer", 6) #就是六個人，然後存整數
for (a in seq_along(dataSet)){
  numbersofchildren <- length(dataSet[[a]]$children)
  print(numbersofchildren)
  results[[a]] <- numbersofchildren
}
  

results <- vector("integer", 6) #就是六個人，然後存整數
for (a in 1:6){
  numbersofchildren <- length(dataSet[[a]]$children)
  print(numbersofchildren)
  results[[a]] <- numbersofchildren
}

abc <- vector("list", 6)
for (a in 1:6){
  abc[[a]] <-dataSet[[a]]$children
}


flights <- readRDS("data/flights_week10.rds")

flightsData2 |> 
  split(
  flightsData$AirlineID 
) -> split_data


for (a in seq_along(split_data)){
numberofflights[[a]] <- 
  nrow(split_data[[a]])
}


View(split_data[[1]])
nrow(split_data[[1]])


#example(？？？？)
emptydataset=list()
1:length(emtydataset)
for (a  in c(1,0)) {
  print(emptydataset[[a]])
}


for (a in seq_along(emtydataset)){
  print(emtydataset[[a]])
}





