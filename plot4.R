
#Plot3
setwd("C:/Users/blairben/Desktop/Data Science")
#data<-as.data.frame(read.table("household_power_consumption.txt",sep=";",header=TRUE))

#Only use 2007-02-01 and 2007-02-02
data$Date2<-as.Date(data$Date, "%d/%m/%Y")
data2<-subset(data, data$Date2=="2007-02-01" | data$Date2=="2007-02-02")

#Cleaning
data2$dateandtime <- as.POSIXct(paste(data2$Date2,data2$Time))

#Cleaning
data2$dateandtime <- as.POSIXct(paste(data2$Date2,data2$Time))


data$Date2<-as.Date(data$Date, "%d/%m/%Y")
#data$weekday <- as.factor(weekdays(data$Date))
head(data)
#Only use 2007-02-01 and 2007-02-02

data2<-subset(data, data$Date2=="2007-02-01" | data$Date2=="2007-02-02")

#Plot1
data2$Global_active_power2<-as.numeric(as.character(data2$Global_active_power))


#Plot2
data2$dateandtime<-data2$Date2+data2$Time
#data2$Time2<-strptime(data2$Time, "%H:%M:%S")
data2$weekday <- as.factor(weekdays(data2$Date2))
head(data2)

data2$dateandtime <- as.POSIXct(paste(data2$Date2,data2$Time))
head(data2$dateandtime)


#Plot3
data2$Sub_metering_1<-as.numeric(as.character(data2$Sub_metering_1))
data2$Sub_metering_2<-as.numeric(as.character(data2$Sub_metering_2))
data2$Sub_metering_3<-as.numeric(as.character(data2$Sub_metering_3))


#Plot4
data2$Global_reactive_power<-as.numeric(as.character(data2$Global_reactive_power))
plot(data2$dateandtime,data2$Global_reactive_power,type="l",ylab="Global Reactive Power",xlab="",color="black")

par(mfrow=c(2,2))
hist(data2$Global_active_power2,xlab="Global Active Power (kilowatts)", ylab="Frequency",main="Global Active Power",col="red")
plot(data2$dateandtime,data2$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
plot(data2$dateandtime,data2$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="",color="black")
lines(data2$dateandtime,data2$Sub_metering_2,col="red")
lines(data2$dateandtime,data2$Sub_metering_3,col="blue")
plot(data2$dateandtime,data2$Global_reactive_power,type="l",ylab="Global Reactive Power",xlab="",color="black")
