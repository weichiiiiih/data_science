#資料引入----
install.packages("readxl")
library(readxl)
data <- readxl::read_excel("/Users/weichiiiiih/Desktop/data_science/data/metro.xlsx")
data <- as.data.frame((data))

#表格套件-----
install.packages("tibble")
library(tibble)

#圖形套件
install.packages("ggplot2")
library(ggplot2)

#104年進站----
numberV1 <- data$V1 |> as.numeric()
sortnumberV1 <- sort(numberV1, decreasing=TRUE,index.return = TRUE)
print(sortnumberV1)
#1(總計), 44  43  74  80  77  63  71  78  70  49 
data[c(3,46,45,76,82,79,65,73,80,72,51), c(1,2)] #前10

#結果的表格
in104top <- data[c(28, 14, 61, 12, 60, 23, 103, 26, 15, 11), c(1, 4)]
in104top_table <- as.data.frame(in104top)
print(in104top_table)


sortnumber1V <- sort(numberV1, decreasing=F,index.return = TRUE)
print(sortnumber1V)
# 26  12  59  64  10  24  21  58 101 102 
data[c(28,14,61,66,12,26,23,60,103,104), c(1,2)] #後10




#104年出站----
numberV2 <- data$V2 |> as.numeric()
sortnumberV2 <- sort(numberV2, decreasing=TRUE,index.return = TRUE)
print(sortnumberV2)
#1(總計), 44  74  43  80  77  78  70  63  71  49 
data[c(3,46,76,45,82,79,80,72,65,73,51), c(1,3)] #前10

sortnumber2V <- sort(numberV2, decreasing=F,index.return = TRUE)
print(sortnumber2V)
#12  26  59  64  10  93  24  21  58 101
data[c(14,28,61,66,12,95,26,23,60,103), c(1,3)] #後10


#105年進站----
numberV3 <- data$V3 |> as.numeric()
sortnumberV3 <- sort(numberV3, decreasing=TRUE,index.return = TRUE)
print(sortnumberV3)
# 1  44  43  74  80  77  63  71  70  78  49 
data[c(3,46,45,76,82,79,65,73,72,80,51), c(1,4)] #前10

sortnumber3V <- sort(numberV3, decreasing=F,index.return = TRUE)
print(sortnumber3V)
#26  12  59  10  58  21 101  24  13   9
data[c(28,14,61,12,60,23,103,26,15,11), c(1,4)] #後10


#105年出站----
numberV4 <- data$V4 |> as.numeric()
sortnumberV4 <- sort(numberV4, decreasing=TRUE,index.return = TRUE)
print(sortnumberV4)
#  1  44  74  43  80  77  70  78  63  71  49 
data[c(3,46,76,45,82,79,72,80,65,73,51), c(1,5)] #前10

sortnumber4V <- sort(numberV4, decreasing=F,index.return = TRUE)
print(sortnumber4V)
#12  26  59  10  58  21  93 101  24   9 
data[c(14,28,61,12,60,23,95,103,26,11), c(1,5)] #後10

#106年進站----
numberV5 <- data$V5 |> as.numeric()
sortnumberV5 <- sort(numberV5, decreasing=TRUE,index.return = TRUE)
print(sortnumberV5)
# 1  44  74  43  80  77  70  63  71  78  49 
data[c(3,46,76,45,82,79,72,65,73,80,51), c(1,6)] #前10

sortnumber5V <- sort(numberV5, decreasing=F,index.return = TRUE)
print(sortnumber5V)
# 26  12  59  10  21  58  13 101   9  24 
data[c(28,14,61,12,23,60,15,103,11,26), c(1,6)] #後10



#106年出站----
numberV6 <- data$V6 |> as.numeric()
sortnumberV6 <- sort(numberV6, decreasing=TRUE,index.return = TRUE)
print(sortnumberV6)
#   1  44  74  43  80  70  77  78  63  71  38
data[c(3,46,76,45,82,72,79,80,65,73,40), c(1,7)] #前10


sortnumber6V <- sort(numberV6, decreasing=F,index.return = TRUE)
print(sortnumber6V)
#12  26  59  10  21  58  93   9 101  13
data[c(14,28,61,12,23,60,95,11,103,15), c(1,7)] #後10


#107年進站----
numberV7 <- data$V7 |> as.numeric()
sortnumberV7 <- sort(numberV7, decreasing=TRUE,index.return = TRUE)
print(sortnumberV7)
#   1  44  74  43  80  77  70  71  63  78  38
data[c(3,46,76,45,82,79,72,73,65,80,40), c(1,8)]


#107年出站----
numberV8 <- data$V8 |> as.numeric()
sortnumberV8 <- sort(numberV8, decreasing=TRUE,index.return = TRUE)
print(sortnumberV8)
#   1  44  74  43  80  70  77  71  63  78  38 
data[c(3,46,76,45,82,72,79,73,65,80,40), c(1,9)]

#108年進站----
numberV9 <- data$V9 |> as.numeric()
sortnumberV9 <- sort(numberV9, decreasing=TRUE,index.return = TRUE)
print(sortnumberV9)
# 1  44  74  43  80  77  70  71  63  38  87 
data[c(3,46,76,45,82,79,72,73,65,40,89), c(1,10)]

#108年出站----
numberV10 <- data$V10 |> as.numeric()
sortnumberV10 <- sort(numberV10, decreasing=TRUE,index.return = TRUE)
print(sortnumberV10)
#  1  44  74  80  43  70  77  71  63  38  45 
data[c(3,46,76,82,45,72,79,73,65,40,47), c(1,11)]


#109年進站----
numberV11 <- data$V11 |> as.numeric()
sortnumberV11 <- sort(numberV11, decreasing=TRUE,index.return = TRUE)
print(sortnumberV11)
#   1  44  74  80  43  70  71  77  38  63  45 
data[c(3,46,76,82,45,72,73,79,40,65,47), c(1,12)]


#109年出站----
numberV12 <- data$V12 |> as.numeric()
sortnumberV12 <- sort(numberV12, decreasing=TRUE,index.return = TRUE)
print(sortnumberV12)
# 1  44  80  74  43  70  71  77  38  45  78 
data[c(3,46,82,76,45,72,73,79,40,47,80), c(1,13)]


#110年進站----
numberV13 <- data$V13 |> as.numeric()
sortnumberV13 <- sort(numberV13, decreasing=TRUE,index.return = TRUE)
print(sortnumberV13)
# 1  44  80  74  43  71  77  70  63  38  45 
data[c(3,46,82,76,45,73,79,72,65,40,47), c(1,14)]


#110年出站----
numberV14 <- data$V14 |> as.numeric()
sortnumberV14 <- sort(numberV14, decreasing=TRUE,index.return = TRUE)
print(sortnumberV14)
#1(總計), 44  80  74  43  70  71  77  45  38  78
data[c(3,46,82,76,45,72,73,79,47,40,80), c(1,15)]


#111年進站----
numberV15 <- data$V15 |> as.numeric()
sortnumberV15 <- sort(numberV15, decreasing=TRUE,index.return = TRUE)
print(sortnumberV15)
#1(總計), 44  80  74  43  71  70  77  45  63  38 
data[c(3,46,82,76,45,73,72,79,47,65,40), c(1,16)]


#111年出站----
numberV16 <- data$V16 |> as.numeric()
sortnumberV16 <- sort(numberV16, decreasing=TRUE,index.return = TRUE)
print(sortnumberV16)
#1(總計), 44  80  74  43  70  45  71  77  38  78
data[c(3,46,80,76,45,72,47,73,79,40,80), c(1,17)]



#安裝並載入折線圖的package:gcookbook----
install.packages(c("ggplot2", "gcookbook")) 
library(ggplot2) 
library(gcookbook) 


#總進站量折線圖-----
taipeimetro <- data.frame(
  year = c(104,105,106,107,108,109,110,111),
  value = c(716.575283,
            738.974313,
            745.298914,
            764.804427,
            788.970453,
            695.540439,
            530.912219,
            587.017562
  )
)

ggplot(taipeimetro, aes(x = year, y = value)) +
  geom_line(color = "blue", size = 2) +
  labs(x = "年份", y = "人數(百萬)", title = "總進站折線圖") +
  scale_x_continuous(breaks = c(104,105,106,107, 108, 109,110,111), labels = c("104","105","106","107","108","109","110","111")
  )



#總人次的改變量-----
#105-108年改變量----
values <- c(716.575283,
            788.970453
)

change_rate <- function(values) {
  new_values <- values[-1]
  old_values <- values[-length(values)]
  
  rate <- (new_values - old_values) / old_values * 100
  
  return(rate)
}

result <- change_rate(values)
print(result)

#108-110年改變量----
values2 <- c( 788.970453,
              530.912219)
change_rate <- function(values) {
  new_values <- values[-1]
  old_values <- values[-length(values)]
  
  rate <- (new_values - old_values) / old_values * 100
  
  return(rate)
}

result2 <- change_rate(values2)
print(result2)





#108年進出站相關係數------
co108 <- data.frame(
  X <- c( 788970453 , 32213290 , 28021574 , 26383018 ,22918425 , 15508892 ,15431724 , 14942869 , 14472026,
          13048812 , 12774960 , 12768222 , 12557498 ,12529506, 11839165 , 11703409, 11599492 , 10960768,
          10851408, 10810764 ,10752431 , 10584883 , 10497855 ,10070060 , 9975312 , 9588769 , 9456006,
          9161345 , 9095877 ,9060748 , 8795910 , 8528563 , 8458027 ,8203502 , 8173487 , 8132062,
          8074391 , 8058457 , 7940668 , 7802451 , 7697457 , 7573177 , 7084156 , 6731368 , 6697772,
          6502146 , 6358823 , 6218328 , 6162698 , 6115163 , 6014623 , 5913923 , 5506382 , 5357695,
          5337318 ,5216306 ,5167189 , 5160937 , 5142984 , 5136693 ,5047217 , 4975425 , 4930890,
          4924815, 4910743 , 4859647 , 4783943 , 4726784 , 4518600 , 4472613 , 4379442 , 4370474,
          4329197 , 4323933 , 4280696 ,4096043 , 4028843 ,3950474 , 3813387 , 3706781 , 3705644,
          3687794 , 3636745 , 3569929 , 3540614 , 3496991 , 3413429 , 3362609 , 3352913 , 3342608,
          3335696 , 3335302 , 3320081 , 3128164 , 3093174 , 2976268 , 2953953 , 2928222 , 2676232,
          2674797 , 2533464 , 2503141 ,2425455 , 2174568 , 2134235 , 2045650 ,1966180 , 1918325,
          1808454 , 1624626 ,1594225 , 1505355 ,1313968 , 1274941 , 1175566 , 1137795 , 1111153,
          920476),
  
  Y <- c(788970453, 35184207, 28297655 , 23497857 , 22834584 , 16646188 , 15207923 , 14379777 , 13571505 , 13481169 , 13418573 , 13307828, 13063997 , 12112395,
         11789483, 11678951 , 11242912, 11240924 , 10831768 , 10683673 , 10670179, 10584636 , 10506112, 10372629 , 9796328 , 9752318 , 9646413 , 9346404,
         9089934 , 8940430 , 8703301 , 8668814 , 8595742 , 8593000, 8573283 , 8516877, 8488097 , 8093456 , 8043072 , 7777414 , 7754299 , 7385181,
         7098530 , 6946372 , 6867475 , 6717227 , 6645947 , 6221183 , 6219435 , 5990333 , 5982851 , 5926291 , 5497713 , 5450194 , 5398594 , 5287254,
         5085322 , 5082422 , 5048206 , 5010919 , 4996530 , 4955870 , 4860405 , 4731585, 4574981, 4557783 , 4437983 , 4437086 , 4409363 , 4401348,
         4334631 , 4329358 , 4328408 , 4325451 , 4315094 , 4310013, 4209450 , 4075882 , 4072011 , 4009890 , 3625554 , 3541385 , 3529864 , 3503817,
         3480557 , 3478480 , 3445594 , 3367772 , 3278281 , 3235227 , 3195226 , 3045300, 3027637 , 2976175 , 2936342 , 2900911 , 2856901 , 2757323,
         2631584 , 2545414 , 2505663 , 2494589 , 2412453 , 2302274, 2044026 , 1910951 , 1767259 , 1727473 , 1574373 , 1561222 , 1560068 , 1518282,
         1306497 , 1238799 , 1223764 , 1136776 , 1063193 , 744769)
  
)

cor108 <- cor(co108$X....c.788970453..32213290..28021574..26383018..22918425..15508892.., co108$Y....c.788970453..35184207..28297655..23497857..22834584..16646188..)

print(paste("相關係數",cor108))








#分組-------
#安裝
#install.packages(c("readxl", "dplyr"))
#library(readxl)
#library(dplyr)


install.packages("dplyr")

V10data <- transform(data,
                  Group = case_when(
                    row_number() %in%c(66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87) ~ "板南線",
                    row_number() %in% c(44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,88,89,90,91,92,113) ~ "淡水信義線",
                    row_number %in% c(100,101,102,103,104,105,106,107,108,109,110,111,112,114,115,116,117,118,119,120) ~ "中和新蘆線",
                    row_number %in% c(28,29,30,31,32,33,34,35,36,37,38,39,93,94,95,96,97,98,99) ~ "松山新店線",
                    row_number %in% c(4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30) ~ "文湖線"
                  ))
                 
# 按 Group 列分组，计算每组的统计量
summary_statistics <- aggregate(V10 ~ Group, V10data, function(x) c(Count = length(x), Mean = mean(x), Median = median(x), Max = max(x), Min = min(x)))



# 显示结果
print(summary_statistics)



#108進出站相關係數-----
taipeimainstation_co <- data.frame(
  Y = c( 788970453,
  32213290,  28021574 , 26383018,  22918425,  15508892 , 15431724 , 14942869,  14472026 , 13048812 , 12774960 , 12768222,  12557498,  12529506,    11839165, 
  11703409 , 11599492 , 10960768 , 10851408,  10810764 , 10752431 , 10584883 , 10497855 , 10070060 ,  9975312 ,  9588769 ,9456006 ,  9161345,
    9095877,   9060748  , 8795910 ,  8528563  , 8458027 ,  8203502  , 8173487,   8132062,   8074391 ,  8058457  , 7940668 ,  7802451  , 7697457 ,  7573177,
    7084156,   6731368,   6697772 ,  6502146  , 6358823 ,  6218328  , 6162698 ,  6115163 ,  6014623 ,  5913923,   5506382 ,  5357695  , 5337318 ,  5216306,
    5167189 ,  5160937 ,  5142984 ,  5136693  , 5047217 ,  4975425  , 4930890 ,  4924815  , 4910743 ,  4859647 ,  4783943 ,  4726784  , 4518600  , 4472613,
    4379442  , 4370474,   4329197 ,  4323933  , 4280696 ,  4096043,   4028843 ,  3950474,   3813387 ,  3706781,   3705644 ,  3687794  , 3636745 ,  3569929,
    3540614  , 3496991 ,  3413429 ,  3362609  , 3352913 ,  3342608 ,  3335696 ,  3335302 ,  3320081 ,  3128164 ,  3093174 ,  2976268  , 2953953 ,  2928222,
    2676232 ,  2674797,   2533464 ,  2503141  , 2425455  , 2174568  , 2134235 ,  2045650  , 1966180 ,  1918325,   1808454 ,  1624626  , 1594225  , 1505355,
    1313968 ,  1274941 ,  1175566  , 1137795  , 1111153 ,  920476 )
)

# 计算变量之间的相关系数
taipeimainstation_correlation <- cor(taipeimainstation_co$X, taipeimainstation_co$Y)

# 显示相关系数
print(paste("相关系数:",taipeimainstation_correlation))



print(summary_statistics)