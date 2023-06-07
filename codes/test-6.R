print(log(32))
print(pi)
seq(0,5,length=6)


print(1+1 :10)
print(2:10
print(1+2:10)
print(2+2:10)
print(4:10)


plot(sin(seq(0,2*pi,length=100)))



a <- 49
print(sqrt(a))

#向量#
a <- vector(length = 3）        #初始化一个长度为3的向量#

print(a)

b <- vector(mode="numeric",3)            #建立一个长度为3的数值型向量#

# mode中将integer和double显示为numeric#

#class>mode>typeof#

typeof(b)

class(b)

mode(b)


print(b)

#默认输出结果为   0 0 0


a <- (1，3，4)

mode(a)
#letter函数是默认的输出字幕的函数#
b=letters[1:3]

mode(b)

type(b)

class(b)

print(b)



#seq函数用法,seq函数用来生成规律序列#
seq.int(2,3,0.5)   #从2到100 2一个间隔，用于递增#  
seq(2,3,0.5)
seq.int(0,5,length.out=6) #从0到5 长度为6,用于切割#
seq(1:100)  #从1到100#

#如何创立矩阵1#
# byrow 为 TRUE 元素按行排列
M <- matrix(c(3:14), ncol = 4, byrow = TRUE)
print(M)

# Ebyrow 为 FALSE 元素按列排列
#不声明byrow或者bycol的话默认案列输出    #
N <- matrix(c(3:14), nrow = 4, bycol = TRUE)
print(N)

# 定义行和列的名称
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")

P <- matrix(c(3:14), nrow = 4, byrow = FALSE, dimnames = list(rownames, colnames))
print(P)


#矩阵例子2#
# 创建 2 行 3 列的矩阵
matrix1 <- matrix(c(7, 9, -1, 4, 2, 3), nrow = 2)
print(matrix1)
#矩阵永远竖着写#
matrix2 <- matrix(c(6, 1, 0, 9, 3, 2), nrow = 2)
print(matrix2)

# 两个矩阵相加
result <- matrix1 + matrix2
cat("相加结果：","\n")
print(result)

# 两个矩阵相减
result <- matrix1 - matrix2
cat("相减结果：","\n")
print(result)

#矩阵例子3#
matrix1 <- matrix(c(1,2,3,4,5,6),ncol = 2)
print(matrix1)

matrix2 <- matrix(c(7,8,9,10,11,12),ncol = 2)
print(matrix2)

matrix3 <-matrix1 *matrix2
can("两矩阵相乘的结果为 :","\n")
print(matrix3)


#Data Frames(表格也叫数据框）#
patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1","Type2","Type1","Type1")
status <- c("Poor","Improved","Excellent","Poor")
patientdata <- data.frame(patientID, age, diabetes,status)

print(patientdata)

class(patientdata)
mode(patientdata)
typeof(patientdata)

class(age)
mode(age)
typeof(age)

class(status)
mode(status)    #characters是字符数据类型#
typeof(status)

#Data Frames#
table=data.frame(
  日期 = c(1,2,3,4,5),
  游戏 = c("Dota2","Csgo","PUBG", "Hearthstone" ,"War3")
)
print(table)
str(table)
#data.frame输出了5个objects，2个变量日期为num类,游戏为chr类#



table = data.frame(
  姓名 = c("张三", "李四","王五"),
  工号 = c("001","002","003"),
  月薪 = c(1000, 2000,3000)
)
# 添加部门列
table$部门 <- c("运营","技术","编辑")

print(table)
str()




data("diamonds")
p1 = ggplot(subset(diamonds, carat >= 2.2),
            aes(x = table, y = price, colour = cut)) +
  geom_point(alpha = 0.7) +
  geom_smooth(method = "loess", alpha = 0.05, size = 1, span = 1) +
  theme_bw()

p1


filter(Topic_Country, NOC == "USA" & NOC == "CAN" & NOC == "AUS"& NOC == "NZL" & NOC == "GBR"& NOC == "IRL" & NOC == "FRA"& NOC == "NED" & NOC == "BEL"& NOC == "LUX" & NOC == "GER"& NOC == "AUT" & NOC == "SUI" & NOC == "NOR" & NOC == "ISL"& NOC == "DEN"& NOC == "SWE"& NOC == "FIN" & NOC == "ITA"& NOC == "ESP" & NOC == "POR" & NOC == "GRE"& NOC == "SLO"&NOC == "CZE"& NOC == "TCH"& NOC == "MLT" & NOC == "CYP"& NOC == "JPN"&NOC == "KOR"& NOC == "SGP"&NOC == "SR" )
"USA","CAN","AUS","NZL","GBR","IRL","IRL","NED","BEL","LUX","GER","AUT","SUI","NOR","ISL","DEN","SWE","FIN","ITA","ESP","POR","GRE","GRE","SLO","CZE","TCH","MLT","CYP","JPN","KOR","SGP","SR")



Year <- NULL    #初始化向量Year
Number <-NULL    #初始化向量Count
n <- 1896
repeat{
  ID <- Olympic1$ID[which(Olympic1$Year == n)] #提取第n年奥运会的ID数据
  b <- data.frame(ID)
  c <- unique(b$ID)       #去重
  d <-length(c)           #求出当年奥运会参加人数
  Year <- append(Year,n)  #将某一年的数据添加进向量
  Year 
  Number <- append(Number,d)#将某一年的人数添加进向量
  Number
  n <- n+2
  if(n>2016)
  {break}
}
History_Number <-data.frame(Year,Number) #合并Year向量和Number向量
History_Number[History_Number==0] <- NA #去掉没有举办奥运会的年份
History_Number=na.omit(History_Number)   #去除没有举办的奥运会所在年








Olympic1$ID <- factor(Olympic1$ID ,    #转为factor形式，替换标签
                         levels=c(1,2,3),
                         labels=c("low","Mid","High"))
Olympic1

