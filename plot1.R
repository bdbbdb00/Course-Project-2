setwd("C:/Users/blairben/Desktop/Data Science")
data<-as.data.frame(read.table("household_power_consumption.txt",sep=";",header=TRUE))

#You may find it useful to convert the Date and Time variables to Date/Time classes 
#in R using the strptime()  and as.Date() functions.

data$Date2<-as.Date(data$Date, "%d/%m/%Y")
#data$weekday <- as.factor(weekdays(data$Date))
head(data)
#Only use 2007-02-01 and 2007-02-02

data2<-subset(data, data$Date2=="2007-02-01" | data$Date2=="2007-02-02")

#Plot1
data2$Global_active_power2<-as.numeric(as.character(data2$Global_active_power))
hist(data2$Global_active_power2,xlab="Global Active Power (kilowatts)", ylab="Frequency",main="Global Active Power",col="red")
