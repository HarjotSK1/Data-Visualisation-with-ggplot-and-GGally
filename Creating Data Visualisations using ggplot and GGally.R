library(datasets)

#Load data set 1
data(mtcars)

#View first 5 rows
head(mtcars, 5)

#Load ggplot package
library(ggplot2)

#Create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

#Add title and change axis name
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("Displacement vs Miles per Gallon") + labs(x = "Displacement", y = "Miles per Gallon")

#Make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

#Create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

#Add colour to the boxplots
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")

#Create histogram of weight
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)

#Load data set 2
data(iris)

#Load GGally package
library(GGally)

#Plots a range of different plots
ggpairs(iris, mapping=ggplot2::aes(colour = Species))
