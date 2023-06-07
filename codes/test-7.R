#重要资料:https://www.cnblogs.com/sakura-d/p/10966874.html  
#首先先构建一个数据框
table=data.frame(
  日期 = c(1,2,3,4,5),
  游戏 = c("Dota2","Csgo","PUBG", "Hearthstone" ,"War3")
)
table$平台 <- c("Steam","Steam","Steam","battle","battle")#使用$来增加列
table$种类 <- c("网游") #只要要添加的数据循环是该向量的整数倍就可以直接循环
print(table)

#subset函数#
#https://www.cnblogs.com/shuaihe/articles/6801932.html#
#subset：对结果进行条件筛选，格式类似 subset = (data.frame名字,筛选条件,从哪里筛选 )#
subset(table,平台=="Steam",select = c("游戏"))
#subset函数例子2
Datafra <- data.frame(name=c(1,2,4,NA,4,5,7),family=c("xiao","ming",NA,NA,"zhou","zheng","li"))
print(Datafra)
subset(Datafra,name >= 1)

table$平台 == "Steam" #Comparison resulting in a logical vector

#关于如何使用"[]"

table[-1,] #删除某一行          第一行 [行,列]

table$游戏<-NULL#删除具体姓名的某一列     删除名为游戏的列
table[-c(2:5),]  #删除2到5行
table[1,] # 输出某一行           第一行
table[c(1:3),] #输出1到3行
table[table$平台 == "Steam" & table$种类== "网游",]  
#输出含具体某一个元素或者多个限制条件的某一行   输出含有Steam平台的网游的所有行

table[1,3]# 输出某个元素        第一行第三个元素
table[[2]]#只看数据的某一行     第二列
table[c("日期","游戏")]#只看带有日期和游戏的列




#Operators
x <- rnorm(100)   #rnorm为产生一些列的随机数
y <- 2*x + rnorm(100)
lm(formula=y~x)

#which 确定元素位置;letters函数输出字母
a <- letters[1:24]
print(a)
which (letters == "r")

#sample函数 随机取样
a <- letters[1:5]
b <- table(a, sample(a))
b

a <- 1:10
sample(x=a,size=5,replace = T)#replace=T 放回抽样即可能抽到重复的,另外函数内必须赋给x

b <-c (1,3,5,7,8)
sample(b,size = 20,replace=T,prob= c(0.1,0.2,0.3,0.4,0.5))

b <- 10.5:30.5
sample(x=b,size=6,replace=T)

#apply 函数，https://www.cnblogs.com/nanhao/p/6674063.html
#定义一个3×2的矩阵：
rname = c("one","two","three")
cname = c("first","second")
b <- matrix(1:6,nrow=3, dimnames = list(rname, cname))
print(b)
apply(b,1,sum) #1表示按行分别求和 2表示按列分别求和

#常用函数https://blog.csdn.net/wzgl__wh/article/details/61499027



for (i in 1:10) {    #for循环
  print(i*i)
}


library(ggplot2)
library(crayon)

a <- data.frame(row.names = "mpg" %+% chr(1:nrow(mpg)),
                manufacturer = mpg$manufacturer,
                model = mpg$model, displ = mpg$displ,
                cyl = mpg$cyl)
a




#添加元素
x <- c(1,2,3)
n <- 6
x <- append(x,n)
repeat{
  n <- n+6
  x <- append(x,n)
  if(n>500)
    {
    break
    }
}

x <- c(1,2,3,4,4,4,4,5,6,7)
n <- 1
a <-x[1]
b <- a
repeat
{   n=n+1
    a <-x[n]
   {if(a==b)
    x <- x[-n]
     n=n-1 else
    b <- a
     
   }
if(b›=7)
{break}
}




x <-c(1,2,3,3,3)
n=1
a <- x[1]
b <- a
repeat{
{
 n=n+1
 a <- x[n]
if(a==b)
 x <- NULL else
   n=n-1}
  
 while(a>3)  {break} 
} 


n <- 1
repeat
{
  m <- sum(unlist(ID)==n)
  Number_of_Participants  <- append(Number_of_Participants ,m)
  n <- n+1
  
  if(n>max(ID)){
    break
  }
}
data.frame(Number_of_Participants)
Number_of_Participants

par(oma=c(1,1,1,1), mar=c(2,2,2,2))
attach(mtcars)
plot(wt, mpg)
abline(lm(mpg~wt))
title("Regression of MPG on Weight")
box(which = "plot",  col = "red",    lwd = 2)
box(which = "figure",col = "blue",   lwd = 4)






x = c(1:10)
y = c(11:20)
par(pin = c(3,30))
plot(x=x,y=y)


