
#Plot2
setwd("C:/Users/blairben/Desktop/Data Science")
data<-as.data.frame(read.table("household_power_consumption.txt",sep=";",header=TRUE))

#Only use 2007-02-01 and 2007-02-02
data$Date2<-as.Date(data$Date, "%d/%m/%Y")
data2<-subset(data, data$Date2=="2007-02-01" | data$Date2=="2007-02-02")

#Cleaning
data2$dateandtime<-data2$Date2+data2$Time
#data2$Time2<-strptime(data2$Time, "%H:%M:%S")
data2$weekday <- as.factor(weekdays(data2$Date2))
head(data2)

data2$dateandtime <- as.POSIXct(paste(data2$Date2,data2$Time))
head(data2$dateandtime)

#Plot2
plot(data2$dateandtime,data2$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")

