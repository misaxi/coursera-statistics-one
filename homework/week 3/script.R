# statistics one, homework week 3
#
# Write a script in R to run correlation and multiple regression analyses.
# Use the data in “DAA.03.txt”. The file contains fictional data from 245 adults.
# The three variables of interest are 
#   (1) physical endurance, 
#   (2) age, and 
#   (3) number of years engaged in an active sport. 
# From your R output, report the 10 values listed in the table below. 
# Round to 2 significant digits (for example, if the correlation is .456 then write .46). 

library(psych)

endr <- read.table("DAA_03.txt", header=T)
names(endr)

hist(endr$age)
hist(endr$activeyears)
hist(endr$endurance)

describe(endr)

plot(endr$endurance ~ endr$age, main="scatterplot", ylab="endurance", xlab="age")
abline(lm(endr$endurance ~ endr$age), col="blue")

plot(endr$endurance ~ endr$activeyears, main="scatterplot", ylab="endurance", xlab="active years")
abline(lm(endr$endurance ~ endr$activeyears), col="blue")

cor(endr)

model1 = lm(endr$endurance ~ endr$age)
summary(model1)

model2 = lm(endr$endurance ~ endr$activeyears)
summary(model2)