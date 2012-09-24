# statistics one, lecture 6, example script
# test/re-test reliability test, row format
library(psych)

# read data into dataframe
impact.row <- read.table("supplemental_STATS1.EX.03.ROW.txt", header=T)

# list the names of the variables in the dataframe
names(impact.row)

# descriptive statistics
describe.by(impact.row, impact.row$test)

# Correlation A & B
cor(impact.row$memory.verbal[impact.row$test=="A"], impact.row$memory.verbal[impact.row$test=="B"])
cor(impact.row$memory.visual[impact.row$test=="A"], impact.row$memory.visual[impact.row$test=="B"])
cor(impact.row$speed.vismotor[impact.row$test=="A"], impact.row$speed.vismotor[impact.row$test=="B"])
cor(impact.row$speed.general[impact.row$test=="A"], impact.row$speed.general[impact.row$test=="B"])
cor(impact.row$impulse.control[impact.row$test=="A"], impact.row$impulse.control[impact.row$test=="B"])
