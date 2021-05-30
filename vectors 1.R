#dataframes
#vector
#homogenous single type of data structure, all values are of same type
vec <- c(1,2,3,4)
str(vec)
class(vec)

vec1 <- c(1,"dog")
class(vec1)
str(vec1)

vec2 <- c(1,t)
class(vec2)
str(vec2)
character>numeric>logical
#list
#heterogenous data structure element identity remians same
as.list(1,2,3)
l1 <- list(1,3,4)
l1
l1[2]
l1[1]
l1[3]
as.list(2,5,4,8,0)
l2 <- list(2,5,4,8,0)
l2[1]
l2[4]

b <- c(1.2,3.4,4.5,6)
as.data.frame(b)
b <- as.data.frame(b)
b
str(b)
class(b)
rownames(b)
colnames(b)
b
rownames(b) <-c("sample1","sample2","sample3","sample4")
b
colnames(b) <- "B"
b
b$B*2
sum(b$B)
b$D <- c(8,9,6,10)
b
b$F <- c(6,7,8,5)
b$D*3
b$D/4
b$D^2
str(b)


#another way
G <- c(5.5,6,67,9)
cbind(b,G)
rbind(b,c(5,6,7,8))
rownames(b)[4] <- "sample4"
b
t(b)
dim(b)
rownames(b)
rowSums(b)
colSums(b)
summary(b)

mean(b)
mean(as.matrix(b))
as.matrix(b)
str(as.matrix(b))
class(as.matrix(b))


#plots
plot(1:5)
plot(b$B)
plot(b$B, type = "l")
plot(b$B, type = "b")
plot(b$D)
plot(b$D, type = "l")
plot(b$D, type = "b")
plot(b$F)
plot(b$F, type = "l")
plot(b$F, type = "b")

#if u want to change plot character
plot(b$B, type = "b", pch=19)
#for colour
points(b$B,b$D, col= "red", pch=19)
mtext("Bvsd in black and BVsd in red")

#barplot
barplot(b$B)
barplot(b$D)
barplot(b$F)
barplot(b$F, names.arg = rownames(b))
barplot(b$F, names.arg = rownames(b), horiz = TRUE)
barplot(b$D, names.arg = rownames(b), horiz = TRUE, las=2, xlab = "time", main ="time trial")

#histogram
?rnorm
d <- rnorm(10, mean = 10, sd = 20)
d
hist(d)
e <- rnorm(50, mean = 10, sd = 50)
e
hist(e)

#boxplot
boxplot(d)
boxplot(d,e)
boxplot(c(d,e))

# creating pdf file in r studio
pdf("myplots.pdf")
hist(d)
hist(e)
boxplot(d,e)
barplot(b$F)
dev.off()