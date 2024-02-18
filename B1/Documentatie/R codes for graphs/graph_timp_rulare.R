# Provided data
data1 <- c(2.7899, 2.6843, 2.703, 13.7448, 2.9155, 59.6545, 
           2.7671, 2.8843, 159.8111, 150.884, 3.025, 3.006, 
           157.7578, 168.3546, 3.1413, 3.2678, 24.0889, 3.1138, 25.3725)
  

data2 <- c(4.71, 4.23, 4.27, 7.24, 4.29, 12.26, 4.19, 4.31, 
           26.06, 14.93, 3.12, 3.15, 16.66, 15.79, 3.15, 
           3.14,6.43,3.52,5.07)

# Calculate cumulative sum of execution times
cumulative_data1 <- cumsum(data1)
cumulative_data2 <- cumsum(data2)

# Total running time calculation
total_time1 <- sum(data1)
total_time2 <- sum(data2)

# Plotting cumulative data
plot(cumulative_data1, type = "o", col = "lightgreen", xlab = "Instances", ylab = "Cumulative Execution Time (s)", 
     main = "Cumulative Execution Time for NeuralSAT vs alpha-beta-CROWN", lwd = 2, xlim = c(1, length(data1)))
lines(cumulative_data2, type = "o", col = "lightblue", lwd = 2)
legend("topleft", legend = c(paste("NeuralSAT (", round(total_time1, 2), ")", sep = ""), 
                             paste("alpha-beta-CROWN (", round(total_time2, 2), ")", sep = "")), 
       col = c("lightgreen", "lightblue"), lty = 1, cex = 0.8)

# Adjusting x-axis tick spacing
axis(1, at = seq(1, length(data1), by = 1))

# Adjusting y-axis tick spacing and adding maximum value
max_value_y1 <- max(cumulative_data1)
max_value_y2 <- max(cumulative_data2)
max_y <- max(max_value_y1, max_value_y2)
axis(2, at = seq(0, max_y, by = 500))
