install.packages("jsonlite")

browseURL("https://apiservice.mol.gov.tw/OdService/download/A17000000J-030504-MLk")
jsonlite::fromJSON("https://data.gov.tw/dataset/161743", simplifyDataFrame = F)

Work_accident <-
  jsonlite::fromJSON("https://apiservice.mol.gov.tw/OdService/download/A17000000J-030504-MLk", simplifyDataFrame = F)

code <-
  jsonlite::fromJSON("https://apiservice.mol.gov.tw/OdService/download/A17000000J-030504-vwh", simplifyDataFrame = F)



mode(Work_accident[[3]])


View(Work_accident)
View(code)

dplyr::glimpse(Work_accident)
dplyr::glimpse(code)


# 將JSON數據轉換為data.frame
df <- as.data.frame(Work_accident)
dplyr::glimpse(df)
View(df)

# 假設 "平均投保薪資" 欄位中包含非數值數據
df$投保薪資 <- as.numeric(df$投保薪資)

# 使用dplyr套件進行分析和排序
result <- df %>%
  group_by(業別) %>%              # 假設"業別"是JSON中的相應欄位
  summarize(平均投保薪資 = mean(平均投保薪資)) %>%
  arrange(desc(平均投保薪資))     # 按照平均投保薪資由高到低排序

# 打印排序後的結果
print(result)



dataframe_Work_accident<- data.frame(Work_accident)
View(dataframe_Work_accident)


Work_accident[[88]]
Work_accident[[1]]$平均投保薪資
Work_accident[[1]][[3]]



grep("11112", Work_accident$資料年月) 


