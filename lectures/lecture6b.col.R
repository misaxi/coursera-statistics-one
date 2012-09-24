# statistic one, lecture 6, example script
# test/re-test reliability analysis, column format

library(psych)

impact.col <- read.table("supplemental_STATS1.EX.03.COL.txt", header=T)
names(impact.col)

describe(impact.col)

# Correlation A & B
cor(impact.col$memory.verbal.A, impact.col$memory.verbal.B)
cor(impact.col$memory.visual.A, impact.col$memory.visual.B)
cor(impact.col$speed.vismotor.A, impact.col$speed.vismotor.B)
cor(impact.col$speed.general.A, impact.col$speed.general.B)
cor(impact.col$impulse.control.A, impact.col$impulse.control.B)

