corr <- function(directory, threshold=0) {
	filesD <- list.files(directory, full.names=TRUE)
	dat <- vector(mode= "numeric", length=0)

	for (i in 1:length(filesD)) {

		temp <- read.csv(filesD[i], header=TRUE)
		temp <- temp[complete.cases(temp),]
		csum <- nrow(temp)
		if(csum>threshold){
			dat <- c(dat, cor(temp$nitrate, temp$sulfate))
		}
	}
	return(dat)
}



cr <- corr("specdata", 150)
