# statistic one, week one, homework, 9/9/2012
# read data, plot histograms, describe data

# load psych library
library(psych)

# read data into dataframe
aer = read.table("DAA.01.aer.txt", header=TRUE)
des = read.table("DAA.01.des.txt", header=TRUE)

# plot 8 histograms into one layout with 2 rows and 4 columns
layout(matrix(c(1,2,3,4,5,6,7,8),2,4,byrow=TRUE))
hist(des$pre.wm.s, xlab="pre.wm.s")
hist(des$post.wm.s, xlab="post.wm.s")
hist(des$pre.wm.v, xlab="pre.wm.v")
hist(des$post.wm.v, xlab="post.wm.v")
hist(aer$pre.wm.s, xlab="pre.wm.s")
hist(aer$post.wm.s, xlab="post.wm.s")
hist(aer$pre.wm.v, xlab="pre.wm.v")
hist(aer$post.wm.v, xlab="post.wm.v")

# describes data
describe(des)
describe(aer)