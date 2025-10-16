setwd("D:\\SLIIT\\2nd year\\1st sem\\Probability and Statistics - IT2120\\lab\\lab10")

observed <- c(55,62,43,46,50)
prob <- c(.2,.2,.2,.2,.2)
chisq.test(x=observed,p=prob)

#Part 2
#Consider 5% level of significance for the test.
#Rejection Region: If the p value for the test is less than 0.05,
#reject the null hypothesis at 5% level of significance.
#P value for the test got as 0.351.
#Conclusion: Since the p value (0.351) is greater than 0.05, do not reject null hypothesis at 5% #level of significance.
#Therefore we can conclude that probability that customers arriving on
#each day will be same which is 0.2.

file_path <-"http://www.sthda.com/sthda/RDoc/data/housetasks.txt"

housetasks <- read.delim(file_path, row.names = 1)
housetasks

chisq <- chisq.test(housetasks)
chisq


observed <- c(120, 95, 85, 100)
prob <- c(0.25, 0.25, 0.25, 0.25)

chisq_test <- chisq.test(x = observed, p = prob)
chisq_test
#The data support the claim that all snack types are chosen with equal probability.
