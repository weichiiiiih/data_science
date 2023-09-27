#basic data type ----
c("John", "Mary")
c(2, 3.1412)
c(TRUE, TRUE, F) # T=True, F=False

#using c() to collect your value

list("John", 5, TRUE)

typeof(c("John", "Mary"))
typeof(list("John", 178, TRUE))

#Binding ----
personName = c("John", "Mary")
interestingNumber = c(2, 3.1412)
covidPositive = c(TRUE, TRUE, F)

##name call to access value
personName
interestingNumber
covidPositive

#Retrieve ONE element value 
#by Position or value 
personName
personName[[1]]
personName[[2]]
personName[[-1]]
personName[[-2]]

c("John", "Mary")[[1]]
c("John", "Mary")[[2]]


listexample = list("John", 178, TRUE)

listexample
listexample[[1]]

#name your element values ----
##name = John, age = 38, height = 178, isMarried = False
recordExample1 = list("John", 38, 178, F)

recordExample2 =list(
  "name" = "John", 
  "age" = 38, 
  "height" = 178, 
  "isMarried" = F
)


recordExample1[[1]]
recordExample2[[1]]
recordExample2$age






