
DESCRIPTIVE STATISTICS & REGRESSION ANALYSIS IN R

INTRODUCTION:

In the given, assignment of week 1 we have supposed to use R programming language to perform Descriptive Statistical and Regression Analytical functions with the described data set. In this we as a student has been given freedom either to pick “Trees” from inbuilt data set of R or any other data set from inbuilt sources. If we talk bit in depth about this, we have to perform multiple regression on dataset to present them numerically and graphically. The most interesting thing about this assignment is we going to use R that too on real-life example.

This assignment has been divided into 2 Parts. In Part A we have to perform total 6 steps that will be described under Part A section and in Part B we have perform 3 steps consist of 4 main function to learn basics like summary (), log (), lm () and ggcorrplot () for correlation graph.

ANALYSIS:

In the initial phase of this project to kick start we are required to install packages followed by the libraries like “MASS”, “DAAG”, “GGPLOT2” and “GGCORRPLOT”. All the mentioned libraries have different functionalities and roles which will be going to use in further programming for analysis.

PART A

TASK 1: In this task 1 of Part A, we have invoked the dataset “Trees” from the inbuilt library of R. Here, we have used attach () so that we don’t have to specify data set tree in the further code of R.
attach(trees)

TASK 2: In this task 2 we have found 5 summary points of the data set trees for example for the column Girth of trees data set we have used summary(Trees $ Girth) and resulted the values in minimum number as  8.30, maximum value as 20.60, mean as 13.25, median as 12.90 and the inter quartile range as 4.20 which is calculated by the difference of 1st quartile and 3rd quartile.

TASK 3: In this given task we have found the correlation between the different factors and columns of the data set trees. In this task we have performed regression function with the help of lm () and along with that we have plotted a straight line of regression which tell us the regression between the two variables. We have used abline to draw that line on the graph. Furthermore, we have used title () to put the title on the graph, used summary () to find the minimum, maximum, inter quartile, mean and median values of the trees.lm data frame. Then we have use coef () and residuals () to find the coefficient and residuals of trees.lm. Below is the graph for a Straight-line regression in correlation of Girth and Height from data set of trees.
 
TASK 4: In this task we have to construct histogram and density plot for the columns of the data set.

TASK 5: In the above graph we have presented a histogram shown in the above graph of girth and frequency, after putting the data into histogram we can see that it is right or positively skewed which also tell that the mean of this data would be greater than the median. . Furthermore, we have used density plot function to graph to find the density of height of trees.
Graph 2: Histogram
 
plot(density(trees$Girth), ylab = "Density of Girth", xlab = "Number of Girth")
Graph 3: Density Graph
 
TASK 6: Above data set we have presented a histogram shown in the above graph for the frequency of height of trees it seems to be left skewed after getting presented on the graph. On the other hand, the mean of the height is somewhere equal to the median of the height of the trees as pe the pattern of the graph. Furthermore, we have used density plot function to graph to find the density of height of trees.

 
TASK 7: In this task we have built a histogram shown in the above graph of volume with the frequency of trees, the graph is positively skewed, and the mean volume of trees is higher the median volume of trees. We have used hist () function to construct the graph. Furthermore, have used plot density function to plot density plot graph for volume density. 

TASK 8: In this task we have performed the graphical representation to find the interquartile range of all the three factors of trees Girth, Height and volume. We have used single graph for all the three columns to keep it compact. As in the graph we can see the first quartile, 3rd quartile and can find the values of interquartile range. The dots outside the quartile boxplot graph are known as outliers.
#Boxplots for Trees dataset
boxplot(trees$Girth, horizontal = TRUE, main = "BoxPlot for Girth")
boxplot(trees$Height, horizontal = TRUE, main = "BoxPlot for Height")
boxplot(trees$Volume, horizontal = TRUE, main = "BoxPlot for Volume")
Graph 8: Boxplot for Girth, Height and Volume
 
Below is the boxplot graph to find the interquartile range of volume of the trees and the outliers in the data. 
 
Below is the boxplot graph to find the interquartile range of height of the trees. We can find the 1st quartile range, 3rd quartile range and the inter quartile range.
 
TASK 9: In this task we are supposed to make normal probability distribution graph which shows us that the distribution of data of height of trees is normally distributed and showing us 2 outliers on head and tail of the distribution.

In this task we are supposed to make normal probability distribution graph which shows us that the distribution of data of Volume of trees is normally distributed and showing us 1 outlier on head and 3 on the tail of the distribution.
 
qqnorm(trees$Volume, xlab = "TREES", ylab = "VOLUME",main = "Normal Probability Plot")
In this task we are supposed to make normal probability distribution graph which shows us that the distribution of data of Girth of trees is normally distributed and showing us 1 outlier on head and 3 on tail of the distribution.
 
PART B

We are moving on the second part of assignment in which we are required to work on two different data set i.e. “Rubber” & “Oddbooks”. In this part we have to apply 4 different function to get the target output the functions are as follows summary (), log (), lm () and ggcorrplot (). 

TASK 1: In this task we have invoked data set from R directory i.e. Rubber, here we have first applied the log () on data set and stored it into logRubber. Then we applied multi regression function keeping multi variable with the function which is inversely proportional to other variable results are stored in logRubber.lm. Further we applied summary () function to find the residuals with minimum values, maximum value, first quartile, third quartile and median values.

In the result Residual standard error: 0.35 on 27 degrees of freedom Multiple R-squared:0.678, Adjusted R-squared:  0.655, F-statistic: 28.5 on 2 and 27 DF, p-value: 2.24e-07.

This part consists of constructing the correlation matrix graph with all the factor so rubber which tell how much one variable is dependent on the other variable depending the correlation. As we can see the in all the factor od rubber all have very all weak correlation between each other. The red color shows that the correlation is high between the variable whereas purple and dark tell us the correlation is very weak. Here we have used round () and cor () to put all the data in the matrix then we have installed the ggplot library and ggcorrplot library to get the desired output.
 

TASK 2: In this task we have invoked data set from R directory i.e. Oddbooks, here we have first applied the log () on data set and stored it into logOddbook. Then we applied multi regression function keeping multi variable with the function which is inversely proportional to other variable results are stored in logOddbook.lm. Further we applied summary () function to find the residuals with minimum values, maximum value, first quartile, third quartile and median values.

 This part consists of constructing the correlation matrix graph with all the factor so oddbooks which tell how much one variable is dependent on the other variable depending the correlation. As we can see the in all the factor of oddbooks correlation between height, breadth and weight is very high whereas talking about the correlation in thickness and with other variable is week. The red color shows that the correlation is high between the variable whereas purple and dark tell us the correlation is very weak. Here we have used round () and cor () to put all the data in the matrix then we have installed the ggplot library and ggcorrplot library to get the desired output.

Graph 10: Correlation Matrix for Oddbooks
 

CONCULSION:

In conclusion, I would like to discuss how we have found the values of 3 different data set we found by invoking the data set from the inbuilt datasets available. In the whole process we have calculated different types of function for different purpose. We calculated the summary of all the number of data set for the respective columns. In the whole assignment we have learned how to find the summary, Straight line regression, creating the histogram and density plot, boxplot and normal probability plot.

In the second part of the assignment we have invoked to different data set Rubber and oddbooks from the library MASS, DAAG and ggplot2. Here, we have performed different functions summary (), log (), lm () and ggcorrplot ().  We also constructed the matrix plot for find the correlation between the different variables of the data set.


REFRENCE:

https://cran.r-project.org/doc/contrib/usingR.pdf
https://www.statmethods.net/r-tutorial/index.html

