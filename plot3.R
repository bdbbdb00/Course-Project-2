
#Plot3
setwd("C:/Users/blairben/Desktop/Data Science")
data<-as.data.frame(read.table("household_power_consumption.txt",sep=";",header=TRUE))

#Only use 2007-02-01 and 2007-02-02
data$Date2<-as.Date(data$Date, "%d/%m/%Y")
data2<-subset(data, data$Date2=="2007-02-01" | data$Date2=="2007-02-02")

#Cleaning
data2$dateandtime <- as.POSIXct(paste(data2$Date2,data2$Time))

#Plot3
data2$Sub_metering_1<-as.numeric(as.character(data2$Sub_metering_1))
data2$Sub_metering_2<-as.numeric(as.character(data2$Sub_metering_2))
data2$Sub_metering_3<-as.numeric(as.character(data2$Sub_metering_3))
plot(data2$dateandtime,data2$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="",color="black")
lines(data2$dateandtime,data2$Sub_metering_2,col="red")
lines(data2$dateandtime,data2$Sub_metering_3,col="blue")
