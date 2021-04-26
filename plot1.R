
R version 4.0.4 (2021-02-15) -- "Lost Library Book"
Copyright (C) 2021 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Previously saved workspace restored]

> ##Plot 1
> 
> dataFile <- data.table ::fread("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
|--------------------------------------------------|
|==================================================|
|--------------------------------------------------|
|==================================================|
> 
> names(dataFile) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
> subdataFile <- subset(dataFile, dataFile$Date == "1/2/2007" | dataFile$Date == "2/2/2007")
> 
> png("plot1.png", width=480, height=480)
> 
> hist(as.numeric(subdataFile$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
> 
> title(main="Global Active Power")
> dev.off()
null device 
          1 
> 
