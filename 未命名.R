data <- data.frame(
  Year = c(107, 108, 109),
  Value = c(1,333,1900)
)

# 使用 ggplot2 绘制折线图并更改x轴刻度
ggplot(data, aes(x = Year, y = Value)) +
  geom_line(color = "blue", size = 2) +
  labs(x = "原始X轴标签", y = "Y轴标签", title = "折线图示例") +
  scale_x_continuous(breaks = c(107, 108, 109), labels = c("年份107", "年份108", "年份109")+
  scale_y_continuous(breaks = 50))