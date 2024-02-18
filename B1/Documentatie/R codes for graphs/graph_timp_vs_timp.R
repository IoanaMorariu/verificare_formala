# Provided data
data1 <- c(4.71, 4.23, 4.27, 7.24, 4.29, 12.26, 4.19, 4.31, 
           26.06, 14.93, 3.12, 3.15, 16.66, 15.79, 3.15, 
           3.14,6.43,3.52,5.07)

data2 <- c(2.7899, 2.6843, 2.703, 13.7448, 2.9155, 59.6545, 
           2.7671, 2.8843, 159.8111, 150.884, 3.025, 3.006, 
           157.7578, 168.3546, 3.1413, 3.2678, 24.0889, 3.1138, 25.3725)

# Total running time calculation
total_time1 <- sum(data1)
total_time2 <- sum(data2)

# Your existing plotting code
plot(data1, type = "o", col = "orange", xlab = "Instances", ylab = "Execution time (s)", 
     main = "NeuralSAT (vnncomp2023 vs our team)", lwd = 2, xlim = c(1, length(data1)))
lines(data2, type = "o", col = "darkblue", lwd = 2)
legend("topleft", legend = c(paste("vnncomp2023 (", round(total_time1, 2), ")", sep = ""), 
                             paste("Our team (", round(total_time2, 2), ")", sep = "")), 
       col = c("orange", "darkblue"), lty = 1, cex = 0.8)

# Adjusting x-axis tick spacing
axis(1, at = seq(1, length(data1), by = 1))

# Adjusting y-axis tick spacing and adding maximum value
max_value_y1 <- max(data1)
max_value_y2 <- max(data2)
max_y <- max(max_value_y1, max_value_y2)
axis(2, at = seq(0, max_y, by = 50))

# Adding "X" markers for instances 9 and 10 from data1
text(x = 9, y = data1[9], labels = "?", col = "red", cex = 1.5)
text(x = 10, y = data1[10], labels = "?", col = "red", cex = 1.5)
text(x = 13, y = data1[13], labels = "?", col = "red", cex = 1.5)
text(x = 14, y = data1[14], labels = "?", col = "red", cex = 1.5)
text(x = 19, y = data1[19], labels = "X", col = "red", cex = 1.5)
