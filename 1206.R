#a block of program
#code block

#exaple of a code block,
#programing block

#use it respectively
#add for (...)in front of it

for (.x in ...)
{
  
}


#use the block somewhere else
#add function(...)in front of it
#and bind it
myfun <- function()
{
  
}



# at anywhere you want to use the code block
myfun(...) #functioin cail


#例子
{
  x+3
}



values_x <- c(2,4,7,15)
seq_along(values_x)
for(x in seq_along(values_x))
{
  values_x[[x]]+3
}


myfun <- function(){
  x+3
}


x=17
{
  x+3
}

#task by situation
oneComingStudentMajor <- sample(c("Economics", "Sociology"), 1) #會隨機出現其中一個
print(oneComingStudentMajor)


#code block 1
if (oneComingStudentMajor == "Economics" )
{print("please go to 201")}


#code block 1
if (oneComingStudentMajor == "Sociology")
print("please go to 301")






