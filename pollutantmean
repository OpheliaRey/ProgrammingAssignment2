
##pollutantmean function

pollutantmean <- function(directory, pollutant, id=1:332) {
	#create file list
	filesD <- list.files(directory, full.names=TRUE)
	#create an empty dataframe
	dat <- data.frame()

	#loop through files until ID is found
	for(i in id) {
		#read in the file
		temp <- read.csv(filesD[i], header=TRUE)
		#add files to the main dataframe
		dat <- rbind(dat, temp)
	}
	#find the mean of the pollutant, removing NA values
	return(mean(dat[[pollutant]], na.rm=TRUE))
}



pollutantmean("specdata", "sulfate", 1:332)
