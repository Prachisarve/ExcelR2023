ages=c(21,30,40,22,45,50,51,23,25,35)
plot(ages) #y-axis

salary= c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)
plot(ages,salary) #(x-axis, y-axis)
plot(salary,ages)

help(plot)

data()
airquality
aiquality=datasets::airquality
head(airquality,10)
tail(airquality,10)
names(airquality)
airquality[,c(1,2)] #all rows and first two columns
df = aiquality[,-6] #excludes column no. 6
df
summary(airquality[,1]) #summary of 1st col
airquality$Wind
summary(airquality$Wind)

plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type = "p")
plot(airquality) #scatterplot
help(plot)
plot(airquality$Ozone,airquality$Month)
plot(airquality$Month,airquality$Ozone)
plot(airquality$Wind,type="l")
plot(airquality$Ozone,type="b")

plot(airquality$Wind,
     xlab = 'Ozone Concentration',
     ylab = 'No of Instance',
     main = 'Ozone level in NY city',
     col = 'blue',
     type = 'l')

plot(airquality,col='red')

#horizontal bar plot
barplot(airquality$Ozone,
        main = 'Ozone concentration in air',
        ylab ='Ozone levels',
        col = 'blue',
        horiz = T,
        axes = F
        )
help(barplot)

#Histogram

hist(airquality$Temp)

hist(airquality$Temp,
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad',
     col = 'blue',
     border = 'red')

help(hist)

#Single box plot 

boxplot(airquality$Wind)

boxplot(airquality$Wind,
        main = 'Boxplot',
        col = 'blue',
        border = 'red',
        horizontal = T)

boxplot.stats(airquality$Wind)$out  #outlier values

hist(airquality$Wind,
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad',
     col = 'blue',
     border = 'red')

boxplot(airquality$Temp,
        main = 'Boxplot',
        col = 'blue',
        border = 'red',
        horizontal = T)

boxplot.stats(airquality$Temp)$out

#multiple boxplots

boxplot(airquality[1:4])

boxplot(airquality[,1:4],
        main = 'Multiple Box plots',
        col = 'pink',
        horizontal = T)

#margin of the grid(mar)(bottom,left,top,right),box margin
#no of rows and column(mfrow),
#whether a border is to be included(bty)
#and position of the
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot (o,n,7,l,c,u)

help(par)
par(mfrow=c(3,3),mar=c(1,2,1,2), las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type = "l")
plot(airquality$Wind, type = "l")
plot(airquality$Solar.R, type = "l")
barplot(airquality$Ozone, main = 'Ozone Concentration',
        xlab = 'Ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple box plots')

#considering NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R) #there are some NA values in col thats why we get ans NA
mean(airquality$Solar.R)
mean(airquality$Wind)

mean(airquality$Solar.R,na.rm = T) #for treat NA values
median(airquality$Ozone)
median(airquality$Ozone,na.rm = T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm = T)

#Google following function as variance in R, etc
#var
#skewness
#kurtosis
#density plot

var(airquality$Wind)
sd(airquality$Ozone)
sd(airquality$Ozone, na.rm = T)

skewness(airquality$Ozone) #error
kurtosis(airquality$Ozone) #error

skewness(airquality$Ozone, na.rm = T)
kurtosis(airquality$Ozone, na.rm = T)
skewness(airquality[,1:4],na.rm = T)

#density plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone, na.rm = T))
=]??density

## In Class Exercise
e_quakes=datasets::quakes
plot(density(e_quakes$quakes))
