#Title: Descriptive Statistics with LungCapData
#Author: Li Zhaozhi

#read in the data set
LungCapData <- read.table('C:/Users/ZhaozhiLi/Desktop/marin-stats-lectures/practice-datasets/LungCapData.txt',
                          header=T, sep='\t')
#check if import succeeded
View(LungCapData)

#attach the data file
attach(LungCapData)

#check variable names in the data frame
names(LungCapData)

#check the dimension of the data frame
dim(LungCapData)

#check data types of the data frame
class(Gender)

#######################################
#frequency table
count <- table(Gender)
percent <- table(Gender)/725

#barplot on the frequencies
barplot(percent, main = 'TITLE', xlab = 'Gender', ylab = '%', las = 1, 
        names.arg = c('Female', 'Male'))

#piechart
pie(count, main = 'TITLE')
box()

#######################################
#boxplot
quantile(LungCap, probs = c(0, 0.25, 0.5, 0.75, 1))
boxplot(LungCap, main = 'Boxplot', ylab = 'Lung Capacity', ylim = c(0, 16), las = 1)
boxplot(LungCap ~ Gender, main = 'Boxplot by Gender')
boxplot(LungCap[Gender == 'female'], LungCap[Gender == 'male'])

#######################################


