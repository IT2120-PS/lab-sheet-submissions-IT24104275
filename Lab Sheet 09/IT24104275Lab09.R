setwd("C:\\Users\\nomad\\OneDrive\\Desktop\\New folder\\IT24104275")
getwd()

#01
#a
baking_times <- rnorm(25, mean = 45, sd = 2)
print(baking_times)


#b
t.test(baking_times, mu = 46, alternative = "less")
