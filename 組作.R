#資料引入----
install.packages("readxl")
library(readxl)
data <- readxl::read_excel("/Users/weichiiiiih/Desktop/data_science/data/tp00236yac.xlsx")
data <- as.data.frame((data))

#102年捷運進站人次----
numberV35 <- data$V35 |> as.numeric()
sortnumberV35 <- sort(numberV35, decreasing=TRUE,index.return = TRUE)
print(sortnumberV35)

#先列再行、列次要+2、行要+1
#1(總計), 44, 43, 79, 73, 76, 63, 77, 70, 49,  69

#總計
data[c(3), c(1,36)]
#102年捷運進站人次前10
data[c(46), c(1,36)]
data[c(45), c(1,36)]
data[c(81), c(1,36)]
data[c(75), c(1,36)]
data[c(78), c(1,36)]
data[c(65), c(1,36)]
data[c(79), c(1,36)]
data[c(72), c(1,36)]
data[c(51), c(1,36)]
data[c(71), c(1,36)]


#102年捷運出站人次----
numberV36 <- data$V36 |> as.numeric()
sortnumberV36 <- sort(numberV36, decreasing=TRUE,index.return = TRUE)
print(sortnumberV36)

#先列再行、列次要+2、行要+1
#1(總計)  44  43  79  73  76  77  63  69  70  49

#總計
data[c(3), c(1,37)]
#102年捷運進站人次前10
data[c(46), c(1,37)]
data[c(45), c(1,37)]
data[c(81), c(1,37)]
data[c(75), c(1,37)]
data[c(78), c(1,37)]
data[c(79), c(1,37)]
data[c(65), c(1,37)]
data[c(71), c(1,37)]
data[c(72), c(1,37)]
data[c(51), c(1,37)]


#103年捷運進站人次----
numberV37 <- data$V37 |> as.numeric()
sortnumberV37 <- sort(numberV37, decreasing=TRUE,index.return = TRUE)
print(sortnumberV37)

#先列再行、列次要+2、行要+1
#1(總計)  44  43  73  79  76  63  70  77  49  69 

#總計
data[c(3), c(1,38)]
#103年捷運進站人次前10
data[c(46), c(1,38)]
data[c(45), c(1,38)]
data[c(75), c(1,38)]
data[c(81), c(1,38)]
data[c(78), c(1,38)]
data[c(65), c(1,38)]
data[c(72), c(1,38)]
data[c(79), c(1,38)]
data[c(51), c(1,38)]
data[c(71), c(1,38)]

#103年捷運出站人次----
numberV38 <- data$V38 |> as.numeric()
sortnumberV38 <- sort(numberV38, decreasing=TRUE,index.return = TRUE)
print(sortnumberV38)

#先列再行、列次要+2、行要+1
#1(總計)  44  43  73  79  76  77  63  69  70 49

#總計
data[c(3), c(1,39)]
#103年捷運出站人次前10
data[c(46), c(1,39)]
data[c(45), c(1,39)]
data[c(75), c(1,39)]
data[c(81), c(1,39)]
data[c(78), c(1,39)]
data[c(79), c(1,39)]
data[c(65), c(1,39)]
data[c(71), c(1,39)]
data[c(72), c(1,39)]
data[c(51), c(1,39)]



#104年捷運進站人次----
numberV39 <- data$V39 |> as.numeric()
sortnumberV39 <- sort(numberV39, decreasing=TRUE,index.return = TRUE)
print(sortnumberV39)

#先列再行、列次要+2、行要+1
#1(總計) 44  43  74  80  77  63  71  78  70  49
#總計
data[c(3), c(1,40)]
#104年捷運出站人次前10
data[c(46), c(1,40)]
data[c(45), c(1,40)]
data[c(76), c(1,40)]
data[c(82), c(1,40)]
data[c(79), c(1,40)]
data[c(46), c(1,40)]
data[c(46), c(1,40)]
data[c(46), c(1,40)]
data[c(46), c(1,40)]
data[c(46), c(1,40)]


#104年捷運出站人次----
numberV40 <- data$V40 |> as.numeric()
sortnumberV40 <- sort(numberV40, decreasing=TRUE,index.return = TRUE)
print(sortnumberV40)

#先列再行、列次要+2、行要+1
#1(總計) 44  74  43  80  77  78  70  63  71  49  
#總計
data[c(3), c(1,41)]
#104年捷運出站人次前10
data[c(46), c(1,41)]
data[c(76), c(1,41)]
data[c(45), c(1,41)]
data[c(82), c(1,41)]
data[c(79), c(1,41)]
data[c(80), c(1,41)]
data[c(72), c(1,41)]
data[c(65), c(1,41)]
data[c(73), c(1,41)]
data[c(51), c(1,41)]



#安裝並載入折線圖的package:gcookbook----
install.packages(c("ggplot2", "gcookbook")) 
library(ggplot2) 
library(gcookbook) 




