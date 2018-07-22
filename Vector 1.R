#Data Structure - Vectors

x= c(1,5,7,8,4)
x2<- c(2,5,7,8,4)
x
x2

x4= c('M','F','M','F','M')
X4
(x5 = 1:100)
x5
(x6= seq(1,100,by=3))
?seq
seq(0,1,length.out=11)

marks= rnorm(60, mean=60, sd=10)
marks
plot(density(marks))
matrix(marks, ncol=6)
?matrix

x7=10:100
x7
x7[1]
x7[1:5]
x7[c(1,3,5)]
x7[-1]
mean(x7)
x7[x7>50]
x7[x7>20 &x7<90]
sum(x7)
median(x7)

(mymatrix= matrix(1:24,ncol=6,byrow=T))
#(mymatrix= matrix(11:34,ncol=6,byrow=T))
length(11:35)
mymatrix[,1]
mymatrix[2:4,3:4]
mymatrix[c(2:4)]
colSums(mymatrix)
rowSums(mymatrix)
rowMeans(mymatrix)
colMeans(mymatrix)


(myarray= array(1:24, dim=c(4,3,2)))
?array
myarray
apply(myarray,1,sum)
apply(myarray,2,sum)
apply(myarray,3,sum)


#data frame
(rollno= c('MBA-01','MBA-02'))
(rollno= paste('MBA',1:60, sep='-'))

(name= c('Student1','Student2'))
(name= paste('Student',1:60, sep='-'))

df= data.frame(rollno, name)
df
set.seed(1234)
(gender= sample(c('M','F'),size=60, replace=T, prob=c(.4,.6)))
table(gender)
prop.table(table(gender))
df= data.frame(rollno,name,gender)
df
head(df)
tail(df)
head(df, n=3)

marks= rnorm(60, mean=60, sd=15)
x= c(23.3, 34.7)
floor(x); ceiling(x); trunc(x); round(x,1)
floor(marks)
(grades= sample(c('Excellent','Good','Poor'), size=60, replace=T, prob=c(.2,.3,.5)))
table(grades)
grades= factor(grades, levels=c('Poor','Good','Excellent'), ordered=T)
grades
summary(grades)

df= data.frame(rollno, name, gender, marks, grades, stringsAsFactors = F)
df

?str
str(df)
summary(df)
df$gender= factor(df$gender)
str(df)
summary(df)

dim(df)
class(df)

aggregate(df$marks, by=list(df$gender), FUN=sum)
aggregate(df$marks, by=list(df$gender), FUN=mean)
aggregate(marks~ gender, data=df, FUN=mean)
aggregate(marks~ gender+ grades, data=df, FUN=mean)

df$marks2= runif(60, 50, 100)
head(df)
?runif

grades
gender
cbind(grades, gender)
rbind(grades, gender)
aggregate(cbind(marks, marks2)~ gender, data=df, FUN= mean)


df
df[df$gender=='M',]
df[df$gender=='M', c(1,2,4)]
df[df$gender=='M', c('rollno', 'gender')]
