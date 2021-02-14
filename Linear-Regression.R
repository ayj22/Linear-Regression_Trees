#Week 1 Assignment Descriptive Statistics and Regression Analysis

#Instal Library
install.packages("MASS") #instal MASS library
install.packages("DAAG")  #instal DAAG library
install.packages("ggplot2") #instal GGPLOT2 library
install.packages("ggcorrplot") #install ggcorrplot
library(MASS)     
library(DAAG)     
library(ggplot2)  
library(ggcorrplot) 

#PART A 

#Inbuild Dataset
attach(trees)

#Five Summary numbers
summary(trees)
summary(trees$Girth)
summary(trees$Height)
summary(trees$Volume)

#Graph a straight line regression 
plot(Girth~Height, data = trees)
trees.lm <- lm(Girth~Height, data = trees)
print(trees.lm)
abline(trees.lm)
title("Regression Between Girth & Height")
options(digits = 2)
summary(trees.lm)
coef(trees.lm)
residuals(trees.lm)

#Histograms & density plots
hist(trees$Girth, xlab = "Volume of Girth", ylab = "Frequency")
hist(trees$Height, xlab = "Volume of Height", ylab = "Frequency")
hist(trees$Volume, xlab = "Volume of Trees", ylab = "Frequency")

plot(density(trees$Girth), ylab = "Density", xlab = "Number of Girth")
plot(density(trees$Height), ylab = "Density", xlab = "Height of Trees")
plot(density(trees$Volume), ylab = "Density", xlab = "Volume of Trees")


#Boxplots for Trees dataset
boxplot(trees$Girth, horizontal = TRUE, main = "BoxPlot for Girth")
boxplot(trees$Height, horizontal = TRUE, main = "BoxPlot for Height")
boxplot(trees$Volume, horizontal = TRUE, main = "BoxPlot for Volume")

#Normal Probability Plots
qqnorm(trees$Girth, xlab = "TREES", ylab = "GIRTH",main = "Normal Probability Plot")
qqnorm(trees$Height, xlab = "TREES", ylab = "HEIGHT",main = "Normal Probability Plot")
qqnorm(trees$Volume, xlab = "TREES", ylab = "VOLUME",main = "Normal Probability Plot")


#PART B

Rubber            #Run Rubber data set
logRubber <- log(Rubber)
logRubber.lm <- lm(formula = loss ~ hard+tens, data = logRubber) #Regression of Rubber stored in Rubber.lm
summary(logRubber.lm) #finding the summary of Rubber.lm
data("Rubber")
corr <- round(cor(Rubber), 1)
ggcorrplot(corr)

#log(),lm() & summary() of oddbooks 
oddbooks          #Run Oddbooks data set
logbooks <- log(oddbooks) #applying log Function
logbooks.lmA <- lm(weight~thick, data = logbooks) #Regression function for oddbooks
summary(logbooks.lmA)$coef  #Summary of correlation between weight & thickness of tree

#log(), lm() & summary() of oddbooks 
logbooks <- log(oddbooks)
logbooks.lmB <- lm(weight~thick+height, data = logbooks)
summary(logbooks.lmB)$coef
data("oddbooks")
corr <- round(cor(oddbooks), 1)
ggcorrplot(corr)

