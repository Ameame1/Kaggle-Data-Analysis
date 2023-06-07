#2.1 Create the following vectors:

#(1,2,3,...,19,20)
a <- (1:20)
a

#(20,19, ...., 2,1)
a <- (20:1)
a

#(1,2,3,...,19,20,19,18,..,2,1)
a <- (20:1)
c <- (19:1)
b <- c(a,c)
b

#2.2 Use the rep() function
#Create a vector (4,6,3) and assign it to the variable tmp.
#Look up the function rep() in the Help window, and write down the R code that produces the following vectors using the tmp vector above:
  


#rep函数解析https://blog.csdn.net/qq_27586341/article/details/91364510
# (4,6,3,4,6,3,...,4,6,3)         there are 10 occurrences of 4.
temp <- c(4,6,3)
rep(temp,time=10)
# (4,6,3,4,6,3,...,4,6,3,4)       there are 11 occurrences of 4, 10 occurrences of 6,
# and 10 occurrences of 3.
rep(temp,time=11,length=31)
#(4,4,...,4,6,6,...,6, 3,3,...,3) there are 10 occurrences of 4, 20 occurrences of 6,
# and 30 occurrences of 3.
q <- rep(temp[1],10)
w <- rep(temp[2],20)
e <- rep(temp[3],30)
r <- c(q,w,e)
r
#等价于
rep(temp,c(10,20,30))



#2.3 Use the paste() function
#paste函数https://www.jianshu.com/p/44e3de9b7a81

#Create the following character vectors of length 30:
#  ("label 1", "label 2", ...., "label 30")
paste("label",1:30,sep=" ")
# Note that there is a single space between label and the number following
#("fn1", "fn2", ..., "fn30")
# In this case there is no space between fn and the number following.
paste("fn",1:30,sep="")

#2.4 Use the rnorm() and sample() functions
#Create a 5x10 matrix with 10 NAs scattered around in the matrix.
##            [,1]       [,2]       [,3]       [,4]        [,5]       [,6]
## [1,]         NA -0.8897004  1.4588141  2.0919534 -0.20627954  1.3778603
## [2,]  0.6095985  0.1821902  0.5489913  0.1931680  0.06392136         NA
## [3,] -0.2098372 -0.5630806         NA  1.4092797  3.22467564  1.3666747
## [4,] -1.3572538  0.2463210 -0.4024872 -0.9763333  0.60866630 -1.3592596
## [5,]  1.1314251         NA  0.5295598         NA -0.28207191 -0.7261723
##            [,7]       [,8]       [,9]      [,10]
## [1,] -1.1328781         NA         NA         NA
## [2,]         NA  0.4070505  0.1279804  0.1039623
## [3,]  1.9680496  0.7407385 -1.8982413  1.1072962
## [4,]  0.0491484 -0.0853304 -0.2685146 -0.7140974
## [5,]  0.8552800 -0.1996405         NA  2.7693037
#创立40个正态分布数据x，创建10个NA数据y，合并数据为z，打乱分布设为v，创立
#数组M 5行10列输出v
x <-rnorm(40)
y <- rep(NA,time=10)
z=c(x,y)
v <-sample(z)
M<-matrix(v,nrow=5,ncol=10)
M

#2.5 Read files using read.csv() and simple plotting
#读取CSV文件https://blog.csdn.net/zw0Pi8G5C1x/article/details/108191230
#https://blog.csdn.net/qq_22230583/article/details/80099117
#read.csv()

rw <-read.table('/Users/liuyu/Downloads/winequality-red.csv', head=T,sep=',',fileEncoding = 'UTF-8')
#Create a vector by choosing the values for only the fixed acidity column.
f7 <- rw[,"fixed.acidity"]
#Sort the values in the vector that you have created in the previous step.
#https://blog.csdn.net/weixin_40628687/article/details/79381882
sort(f7)
#Create a vector where fixed acidity is greater than or equal to 7.
f8 <- subset(f7,f7>=7)
f8
#Create a data frame with only the columns residual sugar and density.
#R根据列名提取想要的列
  #https://blog.csdn.net/weixin_30545285/article/details/97630446?utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7Edefault-13.control&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7Edefault-13.control
P <- subset(rw,select = c("residual.sugar","density"))
#Use the head(), str() and summary() function to explore the data.
head(P)
str(P)
summary(P)
#Use basic R histogram and ggplot’s histogram and density geoms to visualise the data.
#histogram
#https://www.cnblogs.com/geeksongs/p/12425877.html
library(histogram)
f7
hist(f7,xlab = "fixed.acidity",ylab="Frequency",col="blue",border = "red")
#ggplot
#https://blog.csdn.net/biocity/article/details/85596311
#https://blog.csdn.net/lilanfeng1991/article/details/28665255
library(ggplot2)
n <- subset(rw,select = c("fixed.acidity"))
m<-ggplot(n, aes(x=n$fixed.acidity,)) +
  geom_histogram(breaks=seq(4,16,2))+ xlim(4,16)
m

#plot
plot(f7)





#3 Input/Output redirection - source() and sink()

source('example_stat.R')

#4 Managing your R workspace
#ls() – this function will list all the variables currently defined in your R workspace
#rm("mpg") – this function will remove the variable named mpg from the R workspace. Note that you need to have the double-quotes around the variable name.
#rm(list = ls()) – this function will remove all the variables from the R workspace.

#5 Continue the learning journey on swirl
library(swirl) 
swirl()











