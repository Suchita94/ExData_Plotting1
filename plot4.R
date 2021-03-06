par( mfrow = c( 2, 2 ) )
par("ps"=11)
plot(d$Datetime, d$Global_active_power, type = "l", xlab="", ylab="Global Active Power (kilowatts)", xaxt="n")
axis(1, at = c(d$Datetime[1], d$Datetime[1440], d$Datetime[2880]), labels = c("Thu","Fri","Sat"))
plot(d$Datetime, d$Voltage, type = "l", xlab="", ylab="Voltage", xaxt="n")
axis(1, at = c(d$Datetime[1], d$Datetime[1440], d$Datetime[2880]), labels = c("Thu","Fri","Sat"))
plot(d$Datetime, d$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(d$Datetime, d$Sub_metering_2, col="red")
lines(d$Datetime, d$Sub_metering_3, col="blue")
legend("topright",c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=c(1,1,1), col = c("black", "red", "blue"))
plot(d$Datetime, d$Global_reactive_power, type = "l", xlab="", ylab="Global_reactive_power", xaxt="n")
axis(1, at = c(d$Datetime[1], d$Datetime[1440], d$Datetime[2880]), labels = c("Thu","Fri","Sat"))
dev.copy(png, file = "plot4.png")
dev.off()