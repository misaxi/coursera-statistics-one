# statistics one, lecture 9, example script
# multiple reguression analysis

library(psych)

endur <- read.table("supplemental_STATS1_EX_04.txt", header=T)

# Scatterplots
plot(endur$endurance ~ endur$age, main="scatterplot", ylab="endurance", xlab="age")
abline(lm(endur$endurance ~ endur$age), col="blue")

plot(endur$endurance ~ endur$activeyears, main="scatterplot", ylab="endurance", xlab="active years")
abline(lm(endur$endurance ~ endur$activeyears), col="blue")

# Regression analysis (unstandardised)
model1 = lm(endur$endurance ~ endur$age)
summary(model1)

model2 = lm(endur$endurance ~ endur$activeyears)
summary(model2)

model3 = lm(endur$endurance ~ endur$age + endur$activeyears)
summary(model3)

# Regression analysis (standardised)
model1.z = lm(scale(endur$endurance) ~ scale(endur$age))
summary(model1.z)

model2.z = lm(scale(endur$endurance) ~ scale(endur$activeyears))
summary(model2.z)

model3.z = lm(scale(endur$endurance) ~ scale(endur$age) + scale(endur$activeyears))
summary(model3.z)

# Model comparisons
comp1 = anova(model1.z, model3.z)
comp1
comp2 = anova(model2.z, model3.z)
comp2