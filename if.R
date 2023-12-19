# 安裝並載入相關的庫
install.packages("foreign")
library(foreign)

if_data <- read.spss("/Users/weichiiiiih/Desktop/ccc.sav", to.data.frame=TRUE)


# 安裝並載入相關的庫
install.packages("tidyverse")
library(tidyverse)


# 檢查變數類型
str(if_data)

# 將變數轉換為字符型
if_data$cohort_c <- as.character(if_data$cohort_c)
if_data$edu_c <- as.character(if_data$edu_c)

# 確認轉換後的變數類型
str(if_data)





# 創建交叉表，計算平均找工作時間和找工作有遇到困難的百分比
cross_table <- table(if_data$cohort_c, if_data$edu_c)
result <- as.data.frame(cross_table)
result 


# 計算平均找工作時間和有初職困難的百分比
result <- data %>%
  group_by(cohort_c, edu_c) %>%
  summarise(
    Mean_first_month = mean(first_month),
    Diff_percent = mean(first_diff == 1) * 100
  )

colnames(if_data)
