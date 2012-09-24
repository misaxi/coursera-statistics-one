# statistics one, homework, week two
# read spatial working memory, descriptive statistics, 8x8 matrix correlation

# load psych library to use descriptive statistics function
library(psych)

# load data and show the fields
data <- read.table("DAA.02.txt", header=T)
names(data)

describe(data$pre.wm.s1[data$cond=="des"])
describe(data$pre.wm.s1[data$cond=="aer"])
describe(data$post.wm.s1[data$cond=="des"])
describe(data$post.wm.s1[data$cond=="aer"])
describe(data$pre.wm.v1[data$cond=="des"])
describe(data$pre.wm.v1[data$cond=="aer"])
describe(data$post.wm.s1[data$cond=="des"])
describe(data$post.wm.s1[data$cond=="aer"])


plot(data$pre.wm.s1 ~ data$post.wm.s1)
abline(lm(data$pre.wm.s1 ~ data$post.wm.s1))
plot(data$pre.wm.s2 ~ data$post.wm.s2)
abline(lm(data$pre.wm.s2 ~ data$post.wm.s2))
