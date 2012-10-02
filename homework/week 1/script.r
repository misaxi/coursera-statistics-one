# statistic one, week one, homework, 9/9/2012
# read data, plot histograms, describe data

# load psych library
library(psych)

# read data into dataframe
exp = read.table("DAA.01.txt", header=TRUE)

# plot 8 histograms into one layout with 2 rows and 4 columns
layout(matrix(c(1,2,3,4,5,6,7,8),2,4,byrow=TRUE))

hist(exp$pre.wm.s[exp$cond=="aer"], xlab="pre.wm.s")
hist(exp$post.wm.s[exp$cond=="aer"], xlab="post.wm.s")
hist(exp$pre.wm.v[exp$cond=="aer"], xlab="pre.wm.v")
hist(exp$post.wm.v[exp$cond=="aer"], xlab="post.wm.v")
hist(exp$pre.wm.s[exp$cond=="des"], xlab="pre.wm.s")
hist(exp$post.wm.s[exp$cond=="des"], xlab="post.wm.s")
hist(exp$pre.wm.v[exp$cond=="des"], xlab="pre.wm.v")
hist(exp$post.wm.v[exp$cond=="des"], xlab="post.wm.v")

# describes data
describeBy(exp, exp$cond)