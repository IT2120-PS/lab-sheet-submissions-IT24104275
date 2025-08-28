setwd("C:\\Users\\nomad\\OneDrive\\Desktop\\SLIIT\\Year 2\\Sem 1\\PS\\Labs\\IT24104275")
getwd()

# ======================================
# IT24104275 - Exercise Lab 05
# ======================================

# 1. Import the dataset
# Make sure "Exercise - Lab 05.txt" is in your working directory
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

# Check structure (optional)
str(Delivery_Times)

# Rename column for easier access
names(Delivery_Times) <- "Delivery_Time"

# Ensure numeric
Delivery_Times$Delivery_Time <- as.numeric(Delivery_Times$Delivery_Time)

# View first few rows
head(Delivery_Times)

# 2. Draw histogram with 9 class intervals (20 to 70, right-open intervals)
breaks <- seq(20, 70, length.out = 10)  # 9 intervals from 20–70

hist(
  Delivery_Times$Delivery_Time,
  breaks = breaks,
  right = FALSE,            # right-open intervals
  main = "Histogram of Delivery Times",
  xlab = "Delivery Time (minutes)",
  ylab = "Frequency",
  col = "lightblue",
  border = "black"
)


# 4. Cumulative frequency polygon (Ogive)
hist_data <- hist(
  Delivery_Times$Delivery_Time,
  breaks = breaks,
  right = FALSE,
  plot = FALSE
)

freq <- hist_data$counts       # frequencies
cum.freq <- cumsum(freq)       # cumulative frequency

# Add starting point (0 before first class)
cum.freq <- c(0, cum.freq)
x_vals <- breaks

plot(
  x_vals, cum.freq, type = "o",
  main = "Cumulative Frequency Polygon (Ogive)",
  xlab = "Delivery Time (minutes)",
  ylab = "Cumulative Frequency",
  ylim = c(0, max(cum.freq)),
  col = "red", pch = 16
)
