library(psych)

impact <- read.table("supplemental_STATS1.EX.02.txt", header=T)
class(impact)
names(impact)

hist(impact$memory.verbal)
hist(impact$memory.visual)
hist(impact$speed.vismotor)
hist(impact$speed.general)
hist(impact$impulse.control)

describe(impact)

plot(impact$memory.verbal~impact$memory.visual)
abline(lm(impact$memory.verbal~impact$memory.visual), col="blue")

cor.test(impact$memory.verbal, impact$memory.visual)

# Correlation A & B
cor(impact)

library(gclus)
impact.r = abs(cor(impact))
impact.col = dmat.color(impact.r)
impact.o <- order.single(impact.r)
cpairs(impact, impact.o, panel.colors=impact.col, gap=.5,
	 main="Variables Ordered and Colored by Correlation")
