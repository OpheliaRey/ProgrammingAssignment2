complete <- function(directory, id = 1:332) {
	#create file list
	filesD <- list.files(directory, full.names=TRUE)
	#create empty data frame
	dat <- data.frame()
	
	for (i in id) {
		#read in the file
		temp <- read.csv(filesD[i], header=TRUE)
		#delete rows without complete data
		temp <- na.omit(temp)
	
		#count all rows with complete cases
		tNobs <- nrow(temp)

		#number complete cases by index
		dat <- rbind(dat, data.frame(i, tNobs))
		}
	return(dat)
}

complete("specdata", 3)