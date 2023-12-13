bbq123 <- data.frame(
  x = 1:10,
  y = c(3, 5, 8, 2, 7, 4, 9, 1, 6, 5)
)

plot(bbq123$x, bbq123$y, type = "l", col = "blue", lwd = 2, xlab = "X轴标签", ylab = "Y轴标签", main = "折线图示例")

# 添加点标记
points(data$x, data$y, col = "red", pch = 16)

# 添加网格线
grid()

# 添加图例
legend("topright", legend = "折线图", col = "blue", lty = 1, lwd = 2, cex = 0.8)



dataSet1345632 <- 
  data.frame(
    team=c('team 2','team 3','team 1','team 2','team 3','team 1','team 2','team 1','team 3','team 2','team 3','team 1','team 3','team 1','team 2'),
    entranceYear = c(100,100,101,100,100,100,101,100,100,101,101,100,101,100,100),
    grade=c(98,95,76,87,67,83,84,94,70,64,99,77,89,62,65)
  )

split(dataSet1345632, dataSet1345632$team) -> grouped_dataSet1345632_1

View(grouped_dataSet1345632_1)






