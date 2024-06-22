library(dplyr)
library(haven)
library(sas7bdat)

# Set the directory path
dir_path <- "~/Documents/raw_File/"

# Get a list of all .sas7bdat files in the directory
files <- dir(dir_path, pattern = "*.sas7bdat")

n <-  length(files)
print(paste0("There are: ", n, " number of files" ))
#"BRE354"
for (i in 1:n){
  dat <- read.sas7bdat(files[i])
  indx <-  grepl("Right", dat)
  data <- dat[,indx] %>% colnames()
  print(paste0("The file name is", ": " , files[i], "  Overall ", i, " number of iles have been checked"))
  print(data)
}

# View the resulting data