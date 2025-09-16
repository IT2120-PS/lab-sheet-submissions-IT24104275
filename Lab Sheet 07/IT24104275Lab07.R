setwd("C:\\Users\\nomad\\OneDrive\\Desktop\\IT24104275")

# Problem 1: Uniform distribution
min_time <- 0
max_time <- 40
prob_uniform <- punif(25, min_time, max_time) - punif(10, min_time, max_time)
print(paste("Problem 1: P(10 <= X <= 25) =", prob_uniform))

# Problem 2: Exponential distribution
lambda <- 1/3
prob_exponential <- pexp(2, rate = lambda)
print(paste("Problem 2: P(T <= 2) =", prob_exponential))

# Problem 3: Normal distribution
mean_iq <- 100
sd_iq <- 15

# i. Probability IQ > 130
prob_iq_above_130 <- 1 - pnorm(130, mean_iq, sd_iq)
print(paste("Problem 3(i): P(IQ > 130) =", prob_iq_above_130))

# ii. 95th percentile IQ
iq_95th <- qnorm(0.95, mean_iq, sd_iq)
print(paste("Problem 3(ii): 95th percentile IQ =", iq_95th))
