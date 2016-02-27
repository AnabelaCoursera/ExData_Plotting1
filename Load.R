## Validat sys locate to pass to english: Sys.getlocale(). In my casa it is in portuguese
Sys.setlocale("LC_TIME", "English")
## Load file and unzip to /data/consumption directory
if(!file.exists("./data")){dir.create("./data")}
setwd("./data")
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile="./Consumption.zip")
if(!file.exists("./consumption")){dir.create("./consumption")}
unzip(zipfile="./Consumption.zip",exdir="./consumption")
setwd("./consumption")
## Validate memory 
#### The dataset has 2,075,259 rows and 9 columns, so: 2.075.259x9x8bytes=149.418.648bytes/1.048.576bytes=+-143Mb
## Load only a subset file into R using pipe and grep 
data <- read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt"'),header=TRUE,sep=";",na.strings = "?",stringsAsFactors = FALSE,comment.char="",col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")