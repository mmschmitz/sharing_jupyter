#installing the packages needed to read a raster
#install.packages("rgdal") #already installed
#install.packages("raster") #already installed
#install.packages("stringr") #installing so we can get iterative object names  #already installed
#install.packages("tidyverse",lib="[PACKAGE_PATHNAME]") #having issues installing, so for now putting in my R folder on desktop #should have installed

#loading the raster, sp, and rgdal packages
library(raster)
library(sp)
library(rgdal)
library(stringr)
library(tidyverse,lib.loc="[PACKAGE_PATHNAME]")
library(dplyr,lib.loc="[PACKAGE_PATHNAME]")

## ASSIGNMENT OF OBJECTS FOR EACH RASTER (until I figure out how to make recursive loops to iteratively search and loop)
path = setwd("[DATA_PATHNAME]")

#JANUARY
#path = setwd("[DATA_PATHNAME]/01_January")

#Set the working directory to a subfolder within the current working directory
#setwd(paste0(getwd(), "/Statistical Analysis"))

## below path was to abstract out object names (don't seem to need this as much now)
#dir(path)
#list.files()
#list.files(recursive=TRUE,pattern='tif$') #all files with "TIF" as last few digits, so I can abstract out some names

#abstracting out our file list as a data frame, and then abstracting out each section to make a unique identifier with little mess.
#df=data.frame(FileName = list.files(recursive=TRUE,pattern='tif$'))
#df$Month <- str_sub(df$FileName,start=-9,end=-8)
#df$Day <- str_sub(df$FileName,start=-6,end=-5)
#df$Month
#df$Day
#df$CHIRPSName <- str_c("CHIRPS_",df$Month,"_",df$Day)
#df$CHIRPSName
#df$CHIRPSObj <- str_c(df$CHIRPSName," <- ",'raster("',df$FileName,'")') #could have just appended everything into one formula, but harder to check
#df

#write.csv(df,file=paste0("CHIRPS_ObjectNames.csv"))

#############################################################################

## From the "CHIRPS_ObjectNames.csv" file above, I then manually assigned each raster to its distinct date of observation

CHIRPS_01_01 <- raster("01_January/chirps-v2.0.2016.01.01.tif")
CHIRPS_01_02 <- raster("01_January/chirps-v2.0.2016.01.02.tif")
CHIRPS_01_03 <- raster("01_January/chirps-v2.0.2016.01.03.tif")
CHIRPS_01_04 <- raster("01_January/chirps-v2.0.2016.01.04.tif")
CHIRPS_01_05 <- raster("01_January/chirps-v2.0.2016.01.05.tif")
CHIRPS_01_06 <- raster("01_January/chirps-v2.0.2016.01.06.tif")
CHIRPS_01_07 <- raster("01_January/chirps-v2.0.2016.01.07.tif")
CHIRPS_01_08 <- raster("01_January/chirps-v2.0.2016.01.08.tif")
CHIRPS_01_09 <- raster("01_January/chirps-v2.0.2016.01.09.tif")
CHIRPS_01_10 <- raster("01_January/chirps-v2.0.2016.01.10.tif")
CHIRPS_01_11 <- raster("01_January/chirps-v2.0.2016.01.11.tif")
CHIRPS_01_12 <- raster("01_January/chirps-v2.0.2016.01.12.tif")
CHIRPS_01_13 <- raster("01_January/chirps-v2.0.2016.01.13.tif")
CHIRPS_01_14 <- raster("01_January/chirps-v2.0.2016.01.14.tif")
CHIRPS_01_15 <- raster("01_January/chirps-v2.0.2016.01.15.tif")
CHIRPS_01_16 <- raster("01_January/chirps-v2.0.2016.01.16.tif")
CHIRPS_01_17 <- raster("01_January/chirps-v2.0.2016.01.17.tif")
CHIRPS_01_18 <- raster("01_January/chirps-v2.0.2016.01.18.tif")
CHIRPS_01_19 <- raster("01_January/chirps-v2.0.2016.01.19.tif")
CHIRPS_01_20 <- raster("01_January/chirps-v2.0.2016.01.20.tif")
CHIRPS_01_21 <- raster("01_January/chirps-v2.0.2016.01.21.tif")
CHIRPS_01_22 <- raster("01_January/chirps-v2.0.2016.01.22.tif")
CHIRPS_01_23 <- raster("01_January/chirps-v2.0.2016.01.23.tif")
CHIRPS_01_24 <- raster("01_January/chirps-v2.0.2016.01.24.tif")
CHIRPS_01_25 <- raster("01_January/chirps-v2.0.2016.01.25.tif")
CHIRPS_01_26 <- raster("01_January/chirps-v2.0.2016.01.26.tif")
CHIRPS_01_27 <- raster("01_January/chirps-v2.0.2016.01.27.tif")
CHIRPS_01_28 <- raster("01_January/chirps-v2.0.2016.01.28.tif")
CHIRPS_01_29 <- raster("01_January/chirps-v2.0.2016.01.29.tif")
CHIRPS_01_30 <- raster("01_January/chirps-v2.0.2016.01.30.tif")
CHIRPS_01_31 <- raster("01_January/chirps-v2.0.2016.01.31.tif")
CHIRPS_02_01 <- raster("02_February/chirps-v2.0.2016.02.01.tif")
CHIRPS_02_02 <- raster("02_February/chirps-v2.0.2016.02.02.tif")
CHIRPS_02_03 <- raster("02_February/chirps-v2.0.2016.02.03.tif")
CHIRPS_02_04 <- raster("02_February/chirps-v2.0.2016.02.04.tif")
CHIRPS_02_05 <- raster("02_February/chirps-v2.0.2016.02.05.tif")
CHIRPS_02_06 <- raster("02_February/chirps-v2.0.2016.02.06.tif")
CHIRPS_02_07 <- raster("02_February/chirps-v2.0.2016.02.07.tif")
CHIRPS_02_08 <- raster("02_February/chirps-v2.0.2016.02.08.tif")
CHIRPS_02_09 <- raster("02_February/chirps-v2.0.2016.02.09.tif")
CHIRPS_02_10 <- raster("02_February/chirps-v2.0.2016.02.10.tif")
CHIRPS_02_11 <- raster("02_February/chirps-v2.0.2016.02.11.tif")
CHIRPS_02_12 <- raster("02_February/chirps-v2.0.2016.02.12.tif")
CHIRPS_02_13 <- raster("02_February/chirps-v2.0.2016.02.13.tif")
CHIRPS_02_14 <- raster("02_February/chirps-v2.0.2016.02.14.tif")
CHIRPS_02_15 <- raster("02_February/chirps-v2.0.2016.02.15.tif")
CHIRPS_02_16 <- raster("02_February/chirps-v2.0.2016.02.16.tif")
CHIRPS_02_17 <- raster("02_February/chirps-v2.0.2016.02.17.tif")
CHIRPS_02_18 <- raster("02_February/chirps-v2.0.2016.02.18.tif")
CHIRPS_02_19 <- raster("02_February/chirps-v2.0.2016.02.19.tif")
CHIRPS_02_20 <- raster("02_February/chirps-v2.0.2016.02.20.tif")
CHIRPS_02_21 <- raster("02_February/chirps-v2.0.2016.02.21.tif")
CHIRPS_02_22 <- raster("02_February/chirps-v2.0.2016.02.22.tif")
CHIRPS_02_23 <- raster("02_February/chirps-v2.0.2016.02.23.tif")
CHIRPS_02_24 <- raster("02_February/chirps-v2.0.2016.02.24.tif")
CHIRPS_02_25 <- raster("02_February/chirps-v2.0.2016.02.25.tif")
CHIRPS_02_26 <- raster("02_February/chirps-v2.0.2016.02.26.tif")
CHIRPS_02_27 <- raster("02_February/chirps-v2.0.2016.02.27.tif")
CHIRPS_02_28 <- raster("02_February/chirps-v2.0.2016.02.28.tif")
CHIRPS_02_29 <- raster("02_February/chirps-v2.0.2016.02.29.tif")
CHIRPS_03_01 <- raster("03_March/chirps-v2.0.2016.03.01.tif")
CHIRPS_03_02 <- raster("03_March/chirps-v2.0.2016.03.02.tif")
CHIRPS_03_03 <- raster("03_March/chirps-v2.0.2016.03.03.tif")
CHIRPS_03_04 <- raster("03_March/chirps-v2.0.2016.03.04.tif")
CHIRPS_03_05 <- raster("03_March/chirps-v2.0.2016.03.05.tif")
CHIRPS_03_06 <- raster("03_March/chirps-v2.0.2016.03.06.tif")
CHIRPS_03_07 <- raster("03_March/chirps-v2.0.2016.03.07.tif")
CHIRPS_03_08 <- raster("03_March/chirps-v2.0.2016.03.08.tif")
CHIRPS_03_09 <- raster("03_March/chirps-v2.0.2016.03.09.tif")
CHIRPS_03_10 <- raster("03_March/chirps-v2.0.2016.03.10.tif")
CHIRPS_03_11 <- raster("03_March/chirps-v2.0.2016.03.11.tif")
CHIRPS_03_12 <- raster("03_March/chirps-v2.0.2016.03.12.tif")
CHIRPS_03_13 <- raster("03_March/chirps-v2.0.2016.03.13.tif")
CHIRPS_03_14 <- raster("03_March/chirps-v2.0.2016.03.14.tif")
CHIRPS_03_15 <- raster("03_March/chirps-v2.0.2016.03.15.tif")
CHIRPS_03_16 <- raster("03_March/chirps-v2.0.2016.03.16.tif")
CHIRPS_03_17 <- raster("03_March/chirps-v2.0.2016.03.17.tif")
CHIRPS_03_18 <- raster("03_March/chirps-v2.0.2016.03.18.tif")
CHIRPS_03_19 <- raster("03_March/chirps-v2.0.2016.03.19.tif")
CHIRPS_03_20 <- raster("03_March/chirps-v2.0.2016.03.20.tif")
CHIRPS_03_21 <- raster("03_March/chirps-v2.0.2016.03.21.tif")
CHIRPS_03_22 <- raster("03_March/chirps-v2.0.2016.03.22.tif")
CHIRPS_03_23 <- raster("03_March/chirps-v2.0.2016.03.23.tif")
CHIRPS_03_24 <- raster("03_March/chirps-v2.0.2016.03.24.tif")
CHIRPS_03_25 <- raster("03_March/chirps-v2.0.2016.03.25.tif")
CHIRPS_03_26 <- raster("03_March/chirps-v2.0.2016.03.26.tif")
CHIRPS_03_27 <- raster("03_March/chirps-v2.0.2016.03.27.tif")
CHIRPS_03_28 <- raster("03_March/chirps-v2.0.2016.03.28.tif")
CHIRPS_03_29 <- raster("03_March/chirps-v2.0.2016.03.29.tif")
CHIRPS_03_30 <- raster("03_March/chirps-v2.0.2016.03.30.tif")
CHIRPS_03_31 <- raster("03_March/chirps-v2.0.2016.03.31.tif")
CHIRPS_04_01 <- raster("04_April/chirps-v2.0.2016.04.01.tif")
CHIRPS_04_02 <- raster("04_April/chirps-v2.0.2016.04.02.tif")
CHIRPS_04_03 <- raster("04_April/chirps-v2.0.2016.04.03.tif")
CHIRPS_04_04 <- raster("04_April/chirps-v2.0.2016.04.04.tif")
CHIRPS_04_05 <- raster("04_April/chirps-v2.0.2016.04.05.tif")
CHIRPS_04_06 <- raster("04_April/chirps-v2.0.2016.04.06.tif")
CHIRPS_04_07 <- raster("04_April/chirps-v2.0.2016.04.07.tif")
CHIRPS_04_08 <- raster("04_April/chirps-v2.0.2016.04.08.tif")
CHIRPS_04_09 <- raster("04_April/chirps-v2.0.2016.04.09.tif")
CHIRPS_04_10 <- raster("04_April/chirps-v2.0.2016.04.10.tif")
CHIRPS_04_11 <- raster("04_April/chirps-v2.0.2016.04.11.tif")
CHIRPS_04_12 <- raster("04_April/chirps-v2.0.2016.04.12.tif")
CHIRPS_04_13 <- raster("04_April/chirps-v2.0.2016.04.13.tif")
CHIRPS_04_14 <- raster("04_April/chirps-v2.0.2016.04.14.tif")
CHIRPS_04_15 <- raster("04_April/chirps-v2.0.2016.04.15.tif")
CHIRPS_04_16 <- raster("04_April/chirps-v2.0.2016.04.16.tif")
CHIRPS_04_17 <- raster("04_April/chirps-v2.0.2016.04.17.tif")
CHIRPS_04_18 <- raster("04_April/chirps-v2.0.2016.04.18.tif")
CHIRPS_04_19 <- raster("04_April/chirps-v2.0.2016.04.19.tif")
CHIRPS_04_20 <- raster("04_April/chirps-v2.0.2016.04.20.tif")
CHIRPS_04_21 <- raster("04_April/chirps-v2.0.2016.04.21.tif")
CHIRPS_04_22 <- raster("04_April/chirps-v2.0.2016.04.22.tif")
CHIRPS_04_23 <- raster("04_April/chirps-v2.0.2016.04.23.tif")
CHIRPS_04_24 <- raster("04_April/chirps-v2.0.2016.04.24.tif")
CHIRPS_04_25 <- raster("04_April/chirps-v2.0.2016.04.25.tif")
CHIRPS_04_26 <- raster("04_April/chirps-v2.0.2016.04.26.tif")
CHIRPS_04_27 <- raster("04_April/chirps-v2.0.2016.04.27.tif")
CHIRPS_04_28 <- raster("04_April/chirps-v2.0.2016.04.28.tif")
CHIRPS_04_29 <- raster("04_April/chirps-v2.0.2016.04.29.tif")
CHIRPS_04_30 <- raster("04_April/chirps-v2.0.2016.04.30.tif")
CHIRPS_05_01 <- raster("05_May/chirps-v2.0.2016.05.01.tif")
CHIRPS_05_02 <- raster("05_May/chirps-v2.0.2016.05.02.tif")
CHIRPS_05_03 <- raster("05_May/chirps-v2.0.2016.05.03.tif")
CHIRPS_05_04 <- raster("05_May/chirps-v2.0.2016.05.04.tif")
CHIRPS_05_05 <- raster("05_May/chirps-v2.0.2016.05.05.tif")
CHIRPS_05_06 <- raster("05_May/chirps-v2.0.2016.05.06.tif")
CHIRPS_05_07 <- raster("05_May/chirps-v2.0.2016.05.07.tif")
CHIRPS_05_08 <- raster("05_May/chirps-v2.0.2016.05.08.tif")
CHIRPS_05_09 <- raster("05_May/chirps-v2.0.2016.05.09.tif")
CHIRPS_05_10 <- raster("05_May/chirps-v2.0.2016.05.10.tif")
CHIRPS_05_11 <- raster("05_May/chirps-v2.0.2016.05.11.tif")
CHIRPS_05_12 <- raster("05_May/chirps-v2.0.2016.05.12.tif")
CHIRPS_05_13 <- raster("05_May/chirps-v2.0.2016.05.13.tif")
CHIRPS_05_14 <- raster("05_May/chirps-v2.0.2016.05.14.tif")
CHIRPS_05_15 <- raster("05_May/chirps-v2.0.2016.05.15.tif")
CHIRPS_05_16 <- raster("05_May/chirps-v2.0.2016.05.16.tif")
CHIRPS_05_17 <- raster("05_May/chirps-v2.0.2016.05.17.tif")
CHIRPS_05_18 <- raster("05_May/chirps-v2.0.2016.05.18.tif")
CHIRPS_05_19 <- raster("05_May/chirps-v2.0.2016.05.19.tif")
CHIRPS_05_20 <- raster("05_May/chirps-v2.0.2016.05.20.tif")
CHIRPS_05_21 <- raster("05_May/chirps-v2.0.2016.05.21.tif")
CHIRPS_05_22 <- raster("05_May/chirps-v2.0.2016.05.22.tif")
CHIRPS_05_23 <- raster("05_May/chirps-v2.0.2016.05.23.tif")
CHIRPS_05_24 <- raster("05_May/chirps-v2.0.2016.05.24.tif")
CHIRPS_05_25 <- raster("05_May/chirps-v2.0.2016.05.25.tif")
CHIRPS_05_26 <- raster("05_May/chirps-v2.0.2016.05.26.tif")
CHIRPS_05_27 <- raster("05_May/chirps-v2.0.2016.05.27.tif")
CHIRPS_05_28 <- raster("05_May/chirps-v2.0.2016.05.28.tif")
CHIRPS_05_29 <- raster("05_May/chirps-v2.0.2016.05.29.tif")
CHIRPS_05_30 <- raster("05_May/chirps-v2.0.2016.05.30.tif")
CHIRPS_05_31 <- raster("05_May/chirps-v2.0.2016.05.31.tif")
CHIRPS_06_01 <- raster("06_June/chirps-v2.0.2016.06.01.tif")
CHIRPS_06_02 <- raster("06_June/chirps-v2.0.2016.06.02.tif")
CHIRPS_06_03 <- raster("06_June/chirps-v2.0.2016.06.03.tif")
CHIRPS_06_04 <- raster("06_June/chirps-v2.0.2016.06.04.tif")
CHIRPS_06_05 <- raster("06_June/chirps-v2.0.2016.06.05.tif")
CHIRPS_06_06 <- raster("06_June/chirps-v2.0.2016.06.06.tif")
CHIRPS_06_07 <- raster("06_June/chirps-v2.0.2016.06.07.tif")
CHIRPS_06_08 <- raster("06_June/chirps-v2.0.2016.06.08.tif")
CHIRPS_06_09 <- raster("06_June/chirps-v2.0.2016.06.09.tif")
CHIRPS_06_10 <- raster("06_June/chirps-v2.0.2016.06.10.tif")
CHIRPS_06_11 <- raster("06_June/chirps-v2.0.2016.06.11.tif")
CHIRPS_06_12 <- raster("06_June/chirps-v2.0.2016.06.12.tif")
CHIRPS_06_13 <- raster("06_June/chirps-v2.0.2016.06.13.tif")
CHIRPS_06_14 <- raster("06_June/chirps-v2.0.2016.06.14.tif")
CHIRPS_06_15 <- raster("06_June/chirps-v2.0.2016.06.15.tif")
CHIRPS_06_16 <- raster("06_June/chirps-v2.0.2016.06.16.tif")
CHIRPS_06_17 <- raster("06_June/chirps-v2.0.2016.06.17.tif")
CHIRPS_06_18 <- raster("06_June/chirps-v2.0.2016.06.18.tif")
CHIRPS_06_19 <- raster("06_June/chirps-v2.0.2016.06.19.tif")
CHIRPS_06_20 <- raster("06_June/chirps-v2.0.2016.06.20.tif")
CHIRPS_06_21 <- raster("06_June/chirps-v2.0.2016.06.21.tif")
CHIRPS_06_22 <- raster("06_June/chirps-v2.0.2016.06.22.tif")
CHIRPS_06_23 <- raster("06_June/chirps-v2.0.2016.06.23.tif")
CHIRPS_06_24 <- raster("06_June/chirps-v2.0.2016.06.24.tif")
CHIRPS_06_25 <- raster("06_June/chirps-v2.0.2016.06.25.tif")
CHIRPS_06_26 <- raster("06_June/chirps-v2.0.2016.06.26.tif")
CHIRPS_06_27 <- raster("06_June/chirps-v2.0.2016.06.27.tif")
CHIRPS_06_28 <- raster("06_June/chirps-v2.0.2016.06.28.tif")
CHIRPS_06_29 <- raster("06_June/chirps-v2.0.2016.06.29.tif")
CHIRPS_06_30 <- raster("06_June/chirps-v2.0.2016.06.30.tif")
CHIRPS_07_01 <- raster("07_July/chirps-v2.0.2016.07.01.tif")
CHIRPS_07_02 <- raster("07_July/chirps-v2.0.2016.07.02.tif")
CHIRPS_07_03 <- raster("07_July/chirps-v2.0.2016.07.03.tif")
CHIRPS_07_04 <- raster("07_July/chirps-v2.0.2016.07.04.tif")
CHIRPS_07_05 <- raster("07_July/chirps-v2.0.2016.07.05.tif")
CHIRPS_07_06 <- raster("07_July/chirps-v2.0.2016.07.06.tif")
CHIRPS_07_07 <- raster("07_July/chirps-v2.0.2016.07.07.tif")
CHIRPS_07_08 <- raster("07_July/chirps-v2.0.2016.07.08.tif")
CHIRPS_07_09 <- raster("07_July/chirps-v2.0.2016.07.09.tif")
CHIRPS_07_10 <- raster("07_July/chirps-v2.0.2016.07.10.tif")
CHIRPS_07_11 <- raster("07_July/chirps-v2.0.2016.07.11.tif")
CHIRPS_07_12 <- raster("07_July/chirps-v2.0.2016.07.12.tif")
CHIRPS_07_13 <- raster("07_July/chirps-v2.0.2016.07.13.tif")
CHIRPS_07_14 <- raster("07_July/chirps-v2.0.2016.07.14.tif")
CHIRPS_07_15 <- raster("07_July/chirps-v2.0.2016.07.15.tif")
CHIRPS_07_16 <- raster("07_July/chirps-v2.0.2016.07.16.tif")
CHIRPS_07_17 <- raster("07_July/chirps-v2.0.2016.07.17.tif")
CHIRPS_07_18 <- raster("07_July/chirps-v2.0.2016.07.18.tif")
CHIRPS_07_19 <- raster("07_July/chirps-v2.0.2016.07.19.tif")
CHIRPS_07_20 <- raster("07_July/chirps-v2.0.2016.07.20.tif")
CHIRPS_07_21 <- raster("07_July/chirps-v2.0.2016.07.21.tif")
CHIRPS_07_22 <- raster("07_July/chirps-v2.0.2016.07.22.tif")
CHIRPS_07_23 <- raster("07_July/chirps-v2.0.2016.07.23.tif")
CHIRPS_07_24 <- raster("07_July/chirps-v2.0.2016.07.24.tif")
CHIRPS_07_25 <- raster("07_July/chirps-v2.0.2016.07.25.tif")
CHIRPS_07_26 <- raster("07_July/chirps-v2.0.2016.07.26.tif")
CHIRPS_07_27 <- raster("07_July/chirps-v2.0.2016.07.27.tif")
CHIRPS_07_28 <- raster("07_July/chirps-v2.0.2016.07.28.tif")
CHIRPS_07_29 <- raster("07_July/chirps-v2.0.2016.07.29.tif")
CHIRPS_07_30 <- raster("07_July/chirps-v2.0.2016.07.30.tif")
CHIRPS_07_31 <- raster("07_July/chirps-v2.0.2016.07.31.tif")
CHIRPS_08_01 <- raster("08_August/chirps-v2.0.2016.08.01.tif")
CHIRPS_08_02 <- raster("08_August/chirps-v2.0.2016.08.02.tif")
CHIRPS_08_03 <- raster("08_August/chirps-v2.0.2016.08.03.tif")
CHIRPS_08_04 <- raster("08_August/chirps-v2.0.2016.08.04.tif")
CHIRPS_08_05 <- raster("08_August/chirps-v2.0.2016.08.05.tif")
CHIRPS_08_06 <- raster("08_August/chirps-v2.0.2016.08.06.tif")
CHIRPS_08_07 <- raster("08_August/chirps-v2.0.2016.08.07.tif")
CHIRPS_08_08 <- raster("08_August/chirps-v2.0.2016.08.08.tif")
CHIRPS_08_09 <- raster("08_August/chirps-v2.0.2016.08.09.tif")
CHIRPS_08_10 <- raster("08_August/chirps-v2.0.2016.08.10.tif")
CHIRPS_08_11 <- raster("08_August/chirps-v2.0.2016.08.11.tif")
CHIRPS_08_12 <- raster("08_August/chirps-v2.0.2016.08.12.tif")
CHIRPS_08_13 <- raster("08_August/chirps-v2.0.2016.08.13.tif")
CHIRPS_08_14 <- raster("08_August/chirps-v2.0.2016.08.14.tif")
CHIRPS_08_15 <- raster("08_August/chirps-v2.0.2016.08.15.tif")
CHIRPS_08_16 <- raster("08_August/chirps-v2.0.2016.08.16.tif")
CHIRPS_08_17 <- raster("08_August/chirps-v2.0.2016.08.17.tif")
CHIRPS_08_18 <- raster("08_August/chirps-v2.0.2016.08.18.tif")
CHIRPS_08_19 <- raster("08_August/chirps-v2.0.2016.08.19.tif")
CHIRPS_08_20 <- raster("08_August/chirps-v2.0.2016.08.20.tif")
CHIRPS_08_21 <- raster("08_August/chirps-v2.0.2016.08.21.tif")
CHIRPS_08_22 <- raster("08_August/chirps-v2.0.2016.08.22.tif")
CHIRPS_08_23 <- raster("08_August/chirps-v2.0.2016.08.23.tif")
CHIRPS_08_24 <- raster("08_August/chirps-v2.0.2016.08.24.tif")
CHIRPS_08_25 <- raster("08_August/chirps-v2.0.2016.08.25.tif")
CHIRPS_08_26 <- raster("08_August/chirps-v2.0.2016.08.26.tif")
CHIRPS_08_27 <- raster("08_August/chirps-v2.0.2016.08.27.tif")
CHIRPS_08_28 <- raster("08_August/chirps-v2.0.2016.08.28.tif")
CHIRPS_08_29 <- raster("08_August/chirps-v2.0.2016.08.29.tif")
CHIRPS_08_30 <- raster("08_August/chirps-v2.0.2016.08.30.tif")
CHIRPS_08_31 <- raster("08_August/chirps-v2.0.2016.08.31.tif")
CHIRPS_09_01 <- raster("09_September/chirps-v2.0.2016.09.01.tif")
CHIRPS_09_02 <- raster("09_September/chirps-v2.0.2016.09.02.tif")
CHIRPS_09_03 <- raster("09_September/chirps-v2.0.2016.09.03.tif")
CHIRPS_09_04 <- raster("09_September/chirps-v2.0.2016.09.04.tif")
CHIRPS_09_05 <- raster("09_September/chirps-v2.0.2016.09.05.tif")
CHIRPS_09_06 <- raster("09_September/chirps-v2.0.2016.09.06.tif")
CHIRPS_09_07 <- raster("09_September/chirps-v2.0.2016.09.07.tif")
CHIRPS_09_08 <- raster("09_September/chirps-v2.0.2016.09.08.tif")
CHIRPS_09_09 <- raster("09_September/chirps-v2.0.2016.09.09.tif")
CHIRPS_09_10 <- raster("09_September/chirps-v2.0.2016.09.10.tif")
CHIRPS_09_11 <- raster("09_September/chirps-v2.0.2016.09.11.tif")
CHIRPS_09_12 <- raster("09_September/chirps-v2.0.2016.09.12.tif")
CHIRPS_09_13 <- raster("09_September/chirps-v2.0.2016.09.13.tif")
CHIRPS_09_14 <- raster("09_September/chirps-v2.0.2016.09.14.tif")
CHIRPS_09_15 <- raster("09_September/chirps-v2.0.2016.09.15.tif")
CHIRPS_09_16 <- raster("09_September/chirps-v2.0.2016.09.16.tif")
CHIRPS_09_17 <- raster("09_September/chirps-v2.0.2016.09.17.tif")
CHIRPS_09_18 <- raster("09_September/chirps-v2.0.2016.09.18.tif")
CHIRPS_09_19 <- raster("09_September/chirps-v2.0.2016.09.19.tif")
CHIRPS_09_20 <- raster("09_September/chirps-v2.0.2016.09.20.tif")
CHIRPS_09_21 <- raster("09_September/chirps-v2.0.2016.09.21.tif")
CHIRPS_09_22 <- raster("09_September/chirps-v2.0.2016.09.22.tif")
CHIRPS_09_23 <- raster("09_September/chirps-v2.0.2016.09.23.tif")
CHIRPS_09_24 <- raster("09_September/chirps-v2.0.2016.09.24.tif")
CHIRPS_09_25 <- raster("09_September/chirps-v2.0.2016.09.25.tif")
CHIRPS_09_26 <- raster("09_September/chirps-v2.0.2016.09.26.tif")
CHIRPS_09_27 <- raster("09_September/chirps-v2.0.2016.09.27.tif")
CHIRPS_09_28 <- raster("09_September/chirps-v2.0.2016.09.28.tif")
CHIRPS_09_29 <- raster("09_September/chirps-v2.0.2016.09.29.tif")
CHIRPS_09_30 <- raster("09_September/chirps-v2.0.2016.09.30.tif")
CHIRPS_10_01 <- raster("10_October/chirps-v2.0.2016.10.01.tif")
CHIRPS_10_02 <- raster("10_October/chirps-v2.0.2016.10.02.tif")
CHIRPS_10_03 <- raster("10_October/chirps-v2.0.2016.10.03.tif")
CHIRPS_10_04 <- raster("10_October/chirps-v2.0.2016.10.04.tif")
CHIRPS_10_05 <- raster("10_October/chirps-v2.0.2016.10.05.tif")
CHIRPS_10_06 <- raster("10_October/chirps-v2.0.2016.10.06.tif")
CHIRPS_10_07 <- raster("10_October/chirps-v2.0.2016.10.07.tif")
CHIRPS_10_08 <- raster("10_October/chirps-v2.0.2016.10.08.tif")
CHIRPS_10_09 <- raster("10_October/chirps-v2.0.2016.10.09.tif")
CHIRPS_10_10 <- raster("10_October/chirps-v2.0.2016.10.10.tif")
CHIRPS_10_11 <- raster("10_October/chirps-v2.0.2016.10.11.tif")
CHIRPS_10_12 <- raster("10_October/chirps-v2.0.2016.10.12.tif")
CHIRPS_10_13 <- raster("10_October/chirps-v2.0.2016.10.13.tif")
CHIRPS_10_14 <- raster("10_October/chirps-v2.0.2016.10.14.tif")
CHIRPS_10_15 <- raster("10_October/chirps-v2.0.2016.10.15.tif")
CHIRPS_10_16 <- raster("10_October/chirps-v2.0.2016.10.16.tif")
CHIRPS_10_17 <- raster("10_October/chirps-v2.0.2016.10.17.tif")
CHIRPS_10_18 <- raster("10_October/chirps-v2.0.2016.10.18.tif")
CHIRPS_10_19 <- raster("10_October/chirps-v2.0.2016.10.19.tif")
CHIRPS_10_20 <- raster("10_October/chirps-v2.0.2016.10.20.tif")
CHIRPS_10_21 <- raster("10_October/chirps-v2.0.2016.10.21.tif")
CHIRPS_10_22 <- raster("10_October/chirps-v2.0.2016.10.22.tif")
CHIRPS_10_23 <- raster("10_October/chirps-v2.0.2016.10.23.tif")
CHIRPS_10_24 <- raster("10_October/chirps-v2.0.2016.10.24.tif")
CHIRPS_10_25 <- raster("10_October/chirps-v2.0.2016.10.25.tif")
CHIRPS_10_26 <- raster("10_October/chirps-v2.0.2016.10.26.tif")
CHIRPS_10_27 <- raster("10_October/chirps-v2.0.2016.10.27.tif")
CHIRPS_10_28 <- raster("10_October/chirps-v2.0.2016.10.28.tif")
CHIRPS_10_29 <- raster("10_October/chirps-v2.0.2016.10.29.tif")
CHIRPS_10_30 <- raster("10_October/chirps-v2.0.2016.10.30.tif")
CHIRPS_10_31 <- raster("10_October/chirps-v2.0.2016.10.31.tif")
CHIRPS_11_01 <- raster("11_November/chirps-v2.0.2016.11.01.tif")
CHIRPS_11_02 <- raster("11_November/chirps-v2.0.2016.11.02.tif")
CHIRPS_11_03 <- raster("11_November/chirps-v2.0.2016.11.03.tif")
CHIRPS_11_04 <- raster("11_November/chirps-v2.0.2016.11.04.tif")
CHIRPS_11_05 <- raster("11_November/chirps-v2.0.2016.11.05.tif")
CHIRPS_11_06 <- raster("11_November/chirps-v2.0.2016.11.06.tif")
CHIRPS_11_07 <- raster("11_November/chirps-v2.0.2016.11.07.tif")
CHIRPS_11_08 <- raster("11_November/chirps-v2.0.2016.11.08.tif")
CHIRPS_11_09 <- raster("11_November/chirps-v2.0.2016.11.09.tif")
CHIRPS_11_10 <- raster("11_November/chirps-v2.0.2016.11.10.tif")
CHIRPS_11_11 <- raster("11_November/chirps-v2.0.2016.11.11.tif")
CHIRPS_11_12 <- raster("11_November/chirps-v2.0.2016.11.12.tif")
CHIRPS_11_13 <- raster("11_November/chirps-v2.0.2016.11.13.tif")
CHIRPS_11_14 <- raster("11_November/chirps-v2.0.2016.11.14.tif")
CHIRPS_11_15 <- raster("11_November/chirps-v2.0.2016.11.15.tif")
CHIRPS_11_16 <- raster("11_November/chirps-v2.0.2016.11.16.tif")
CHIRPS_11_17 <- raster("11_November/chirps-v2.0.2016.11.17.tif")
CHIRPS_11_18 <- raster("11_November/chirps-v2.0.2016.11.18.tif")
CHIRPS_11_19 <- raster("11_November/chirps-v2.0.2016.11.19.tif")
CHIRPS_11_20 <- raster("11_November/chirps-v2.0.2016.11.20.tif")
CHIRPS_11_21 <- raster("11_November/chirps-v2.0.2016.11.21.tif")
CHIRPS_11_22 <- raster("11_November/chirps-v2.0.2016.11.22.tif")
CHIRPS_11_23 <- raster("11_November/chirps-v2.0.2016.11.23.tif")
CHIRPS_11_24 <- raster("11_November/chirps-v2.0.2016.11.24.tif")
CHIRPS_11_25 <- raster("11_November/chirps-v2.0.2016.11.25.tif")
CHIRPS_11_26 <- raster("11_November/chirps-v2.0.2016.11.26.tif")
CHIRPS_11_27 <- raster("11_November/chirps-v2.0.2016.11.27.tif")
CHIRPS_11_28 <- raster("11_November/chirps-v2.0.2016.11.28.tif")
CHIRPS_11_29 <- raster("11_November/chirps-v2.0.2016.11.29.tif")
CHIRPS_11_30 <- raster("11_November/chirps-v2.0.2016.11.30.tif")
CHIRPS_12_01 <- raster("12_December/chirps-v2.0.2016.12.01.tif")
CHIRPS_12_02 <- raster("12_December/chirps-v2.0.2016.12.02.tif")
CHIRPS_12_03 <- raster("12_December/chirps-v2.0.2016.12.03.tif")
CHIRPS_12_04 <- raster("12_December/chirps-v2.0.2016.12.04.tif")
CHIRPS_12_05 <- raster("12_December/chirps-v2.0.2016.12.05.tif")
CHIRPS_12_06 <- raster("12_December/chirps-v2.0.2016.12.06.tif")
CHIRPS_12_07 <- raster("12_December/chirps-v2.0.2016.12.07.tif")
CHIRPS_12_08 <- raster("12_December/chirps-v2.0.2016.12.08.tif")
CHIRPS_12_09 <- raster("12_December/chirps-v2.0.2016.12.09.tif")
CHIRPS_12_10 <- raster("12_December/chirps-v2.0.2016.12.10.tif")
CHIRPS_12_11 <- raster("12_December/chirps-v2.0.2016.12.11.tif")
CHIRPS_12_12 <- raster("12_December/chirps-v2.0.2016.12.12.tif")
CHIRPS_12_13 <- raster("12_December/chirps-v2.0.2016.12.13.tif")
CHIRPS_12_14 <- raster("12_December/chirps-v2.0.2016.12.14.tif")
CHIRPS_12_15 <- raster("12_December/chirps-v2.0.2016.12.15.tif")
CHIRPS_12_16 <- raster("12_December/chirps-v2.0.2016.12.16.tif")
CHIRPS_12_17 <- raster("12_December/chirps-v2.0.2016.12.17.tif")
CHIRPS_12_18 <- raster("12_December/chirps-v2.0.2016.12.18.tif")
CHIRPS_12_19 <- raster("12_December/chirps-v2.0.2016.12.19.tif")
CHIRPS_12_20 <- raster("12_December/chirps-v2.0.2016.12.20.tif")
CHIRPS_12_21 <- raster("12_December/chirps-v2.0.2016.12.21.tif")
CHIRPS_12_22 <- raster("12_December/chirps-v2.0.2016.12.22.tif")
CHIRPS_12_23 <- raster("12_December/chirps-v2.0.2016.12.23.tif")
CHIRPS_12_24 <- raster("12_December/chirps-v2.0.2016.12.24.tif")
CHIRPS_12_25 <- raster("12_December/chirps-v2.0.2016.12.25.tif")
CHIRPS_12_26 <- raster("12_December/chirps-v2.0.2016.12.26.tif")
CHIRPS_12_27 <- raster("12_December/chirps-v2.0.2016.12.27.tif")
CHIRPS_12_28 <- raster("12_December/chirps-v2.0.2016.12.28.tif")
CHIRPS_12_29 <- raster("12_December/chirps-v2.0.2016.12.29.tif")
CHIRPS_12_30 <- raster("12_December/chirps-v2.0.2016.12.30.tif")
CHIRPS_12_31 <- raster("12_December/chirps-v2.0.2016.12.31.tif")

##plotting out a few rasters to make sure they were attached to objects correctly
plot(CHIRPS_01_01,main="CHIRPS, 01/01")
plot(CHIRPS_03_01,main="CHIRPS, 03/01")
plot(CHIRPS_05_01,main="CHIRPS, 05/01")


#Commenting next section out because this was successful, and we want to transfer this to a raster stack
## REMEMBER, THESE ARE THE STATISTICS WE WANT: MIN, MAX, RANGE, MEAN
#looking at one raster to figure out if we can analyze it
#chirps0101 = raster("chirps-v2.0.2016.01.01.tif")
#chirps0101 <- CHIRPS_01_01
#chirps0101

#cellStats(chirps0101,min) #min
#cellStats(chirps0101,max) #max
#cellStats(chirps0101,range) #range
#cellStats(chirps0101,stat='mean') #mean - not commonly defined

#testing outputs here
#test_min <- as.numeric(cellStats(chirps0101,min)) #min
#test_max <- as.numeric(cellStats(chirps0101,max)) #max
#test_range <- as.numeric(cellStats(chirps0101,range)) #range
#test_mean <- as.numeric(cellStats(chirps0101,stat='mean')) #mean - not commonly defined
#tab <- data.frame(test_min,test_max,test_range,test_mean)
#tab

#testing with non-NaN values
#test_min <- as.numeric(cellStats(CHIRPS_05_01,min)) #min
#test_max <- as.numeric(cellStats(CHIRPS_05_01,max)) #max
#test_range <- as.numeric(cellStats(CHIRPS_05_01,range)) #range
#test_mean <- as.numeric(cellStats(CHIRPS_05_01,stat='mean')) #mean - not commonly defined
#tab <- data.frame(CHIRPS_05_01,test_min,test_max,test_mean)
#tab

#class(test_min) #verified that this was numeric - which gave me an idea...

## TRANSFORMING SINGLE RASTER MANIPULATION TO RASTER STACKS BY MONTH

# Raster Stack is too big - needed to subset out to months :()
#ALL <- stack(CHIRPS_01_01,CHIRPS_01_02,CHIRPS_01_03,CHIRPS_01_04,CHIRPS_01_05,CHIRPS_01_06,CHIRPS_01_07,CHIRPS_01_08,CHIRPS_01_09,CHIRPS_01_10,CHIRPS_01_11,CHIRPS_01_12,CHIRPS_01_13,CHIRPS_01_14,CHIRPS_01_15,CHIRPS_01_16,CHIRPS_01_17,CHIRPS_01_18,CHIRPS_01_19,CHIRPS_01_20,CHIRPS_01_21,CHIRPS_01_22,CHIRPS_01_23,CHIRPS_01_24,CHIRPS_01_25,CHIRPS_01_26,CHIRPS_01_27,CHIRPS_01_28,CHIRPS_01_29,CHIRPS_01_30,CHIRPS_01_31,CHIRPS_02_01,CHIRPS_02_02,CHIRPS_02_03,CHIRPS_02_04,CHIRPS_02_05,CHIRPS_02_06,CHIRPS_02_07,CHIRPS_02_08,CHIRPS_02_09,CHIRPS_02_10,CHIRPS_02_11,CHIRPS_02_12,CHIRPS_02_13,CHIRPS_02_14,CHIRPS_02_15,CHIRPS_02_16,CHIRPS_02_17,CHIRPS_02_18,CHIRPS_02_19,CHIRPS_02_20,CHIRPS_02_21,CHIRPS_02_22,CHIRPS_02_23,CHIRPS_02_24,CHIRPS_02_25,CHIRPS_02_26,CHIRPS_02_27,CHIRPS_02_28,CHIRPS_02_29,CHIRPS_03_01,CHIRPS_03_02,CHIRPS_03_03,CHIRPS_03_04,CHIRPS_03_05,CHIRPS_03_06,CHIRPS_03_07,CHIRPS_03_08,CHIRPS_03_09,CHIRPS_03_10,CHIRPS_03_11,CHIRPS_03_12,CHIRPS_03_13,CHIRPS_03_14,CHIRPS_03_15,CHIRPS_03_16,CHIRPS_03_17,CHIRPS_03_18,CHIRPS_03_19,CHIRPS_03_20,CHIRPS_03_21,CHIRPS_03_22,CHIRPS_03_23,CHIRPS_03_24,CHIRPS_03_25,CHIRPS_03_26,CHIRPS_03_27,CHIRPS_03_28,CHIRPS_03_29,CHIRPS_03_30,CHIRPS_03_31,CHIRPS_04_01,CHIRPS_04_02,CHIRPS_04_03,CHIRPS_04_04,CHIRPS_04_05,CHIRPS_04_06,CHIRPS_04_07,CHIRPS_04_08,CHIRPS_04_09,CHIRPS_04_10,CHIRPS_04_11,CHIRPS_04_12,CHIRPS_04_13,CHIRPS_04_14,CHIRPS_04_15,CHIRPS_04_16,CHIRPS_04_17,CHIRPS_04_18,CHIRPS_04_19,CHIRPS_04_20,CHIRPS_04_21,CHIRPS_04_22,CHIRPS_04_23,CHIRPS_04_24,CHIRPS_04_25,CHIRPS_04_26,CHIRPS_04_27,CHIRPS_04_28,CHIRPS_04_29,CHIRPS_04_30,CHIRPS_05_01,CHIRPS_05_02,CHIRPS_05_03,CHIRPS_05_04,CHIRPS_05_05,CHIRPS_05_06,CHIRPS_05_07,CHIRPS_05_08,CHIRPS_05_09,CHIRPS_05_10,CHIRPS_05_11,CHIRPS_05_12,CHIRPS_05_13,CHIRPS_05_14,CHIRPS_05_15,CHIRPS_05_16,CHIRPS_05_17,CHIRPS_05_18,CHIRPS_05_19,CHIRPS_05_20,CHIRPS_05_21,CHIRPS_05_22,CHIRPS_05_23,CHIRPS_05_24,CHIRPS_05_25,CHIRPS_05_26,CHIRPS_05_27,CHIRPS_05_28,CHIRPS_05_29,CHIRPS_05_30,CHIRPS_05_31,CHIRPS_06_01,CHIRPS_06_02,CHIRPS_06_03,CHIRPS_06_04,CHIRPS_06_05,CHIRPS_06_06,CHIRPS_06_07,CHIRPS_06_08,CHIRPS_06_09,CHIRPS_06_10,CHIRPS_06_11,CHIRPS_06_12,CHIRPS_06_13,CHIRPS_06_14,CHIRPS_06_15,CHIRPS_06_16,CHIRPS_06_17,CHIRPS_06_18,CHIRPS_06_19,CHIRPS_06_20,CHIRPS_06_21,CHIRPS_06_22,CHIRPS_06_23,CHIRPS_06_24,CHIRPS_06_25,CHIRPS_06_26,CHIRPS_06_27,CHIRPS_06_28,CHIRPS_06_29,CHIRPS_06_30,CHIRPS_07_01,CHIRPS_07_02,CHIRPS_07_03,CHIRPS_07_04,CHIRPS_07_05,CHIRPS_07_06,CHIRPS_07_07,CHIRPS_07_08,CHIRPS_07_09,CHIRPS_07_10,CHIRPS_07_11,CHIRPS_07_12,CHIRPS_07_13,CHIRPS_07_14,CHIRPS_07_15,CHIRPS_07_16,CHIRPS_07_17,CHIRPS_07_18,CHIRPS_07_19,CHIRPS_07_20,CHIRPS_07_21,CHIRPS_07_22,CHIRPS_07_23,CHIRPS_07_24,CHIRPS_07_25,CHIRPS_07_26,CHIRPS_07_27,CHIRPS_07_28,CHIRPS_07_29,CHIRPS_07_30,CHIRPS_07_31,CHIRPS_08_01,CHIRPS_08_02,CHIRPS_08_03,CHIRPS_08_04,CHIRPS_08_05,CHIRPS_08_06,CHIRPS_08_07,CHIRPS_08_08,CHIRPS_08_09,CHIRPS_08_10,CHIRPS_08_11,CHIRPS_08_12,CHIRPS_08_13,CHIRPS_08_14,CHIRPS_08_15,CHIRPS_08_16,CHIRPS_08_17,CHIRPS_08_18,CHIRPS_08_19,CHIRPS_08_20,CHIRPS_08_21,CHIRPS_08_22,CHIRPS_08_23,CHIRPS_08_24,CHIRPS_08_25,CHIRPS_08_26,CHIRPS_08_27,CHIRPS_08_28,CHIRPS_08_29,CHIRPS_08_30,CHIRPS_08_31,CHIRPS_09_01,CHIRPS_09_02,CHIRPS_09_03,CHIRPS_09_04,CHIRPS_09_05,CHIRPS_09_06,CHIRPS_09_07,CHIRPS_09_08,CHIRPS_09_09,CHIRPS_09_10,CHIRPS_09_11,CHIRPS_09_12,CHIRPS_09_13,CHIRPS_09_14,CHIRPS_09_15,CHIRPS_09_16,CHIRPS_09_17,CHIRPS_09_18,CHIRPS_09_19,CHIRPS_09_20,CHIRPS_09_21,CHIRPS_09_22,CHIRPS_09_23,CHIRPS_09_24,CHIRPS_09_25,CHIRPS_09_26,CHIRPS_09_27,CHIRPS_09_28,CHIRPS_09_29,CHIRPS_09_30,CHIRPS_10_01,CHIRPS_10_02,CHIRPS_10_03,CHIRPS_10_04,CHIRPS_10_05,CHIRPS_10_06,CHIRPS_10_07,CHIRPS_10_08,CHIRPS_10_09,CHIRPS_10_10,CHIRPS_10_11,CHIRPS_10_12,CHIRPS_10_13,CHIRPS_10_14,CHIRPS_10_15,CHIRPS_10_16,CHIRPS_10_17,CHIRPS_10_18,CHIRPS_10_19,CHIRPS_10_20,CHIRPS_10_21,CHIRPS_10_22,CHIRPS_10_23,CHIRPS_10_24,CHIRPS_10_25,CHIRPS_10_26,CHIRPS_10_27,CHIRPS_10_28,CHIRPS_10_29,CHIRPS_10_30,CHIRPS_10_31,CHIRPS_11_01,CHIRPS_11_02,CHIRPS_11_03,CHIRPS_11_04,CHIRPS_11_05,CHIRPS_11_06,CHIRPS_11_07,CHIRPS_11_08,CHIRPS_11_09,CHIRPS_11_10,CHIRPS_11_11,CHIRPS_11_12,CHIRPS_11_13,CHIRPS_11_14,CHIRPS_11_15,CHIRPS_11_16,CHIRPS_11_17,CHIRPS_11_18,CHIRPS_11_19,CHIRPS_11_20,CHIRPS_11_21,CHIRPS_11_22,CHIRPS_11_23,CHIRPS_11_24,CHIRPS_11_25,CHIRPS_11_26,CHIRPS_11_27,CHIRPS_11_28,CHIRPS_11_29,CHIRPS_11_30,CHIRPS_12_01,CHIRPS_12_02,CHIRPS_12_03,CHIRPS_12_04,CHIRPS_12_05,CHIRPS_12_06,CHIRPS_12_07,CHIRPS_12_08,CHIRPS_12_09,CHIRPS_12_10,CHIRPS_12_11,CHIRPS_12_12,CHIRPS_12_13,CHIRPS_12_14,CHIRPS_12_15,CHIRPS_12_16,CHIRPS_12_17,CHIRPS_12_18,CHIRPS_12_19,CHIRPS_12_20,CHIRPS_12_21,CHIRPS_12_22,CHIRPS_12_23,CHIRPS_12_24,CHIRPS_12_25,CHIRPS_12_26,CHIRPS_12_27,CHIRPS_12_28,CHIRPS_12_29,CHIRPS_12_30,CHIRPS_12_31)

##January

ls(pattern="CHIRPS_01") #got us the list of objects that we wanted to append
Jan_Stack <- stack(CHIRPS_01_01,CHIRPS_01_02,CHIRPS_01_03,CHIRPS_01_04,CHIRPS_01_05,CHIRPS_01_06,CHIRPS_01_07,CHIRPS_01_08,CHIRPS_01_09,CHIRPS_01_10,CHIRPS_01_11,CHIRPS_01_12,CHIRPS_01_13,CHIRPS_01_14,CHIRPS_01_15,CHIRPS_01_16,CHIRPS_01_17,CHIRPS_01_18,CHIRPS_01_19,CHIRPS_01_20,CHIRPS_01_21,CHIRPS_01_22,CHIRPS_01_23,CHIRPS_01_24,CHIRPS_01_25,CHIRPS_01_26,CHIRPS_01_27,CHIRPS_01_28,CHIRPS_01_29,CHIRPS_01_30,CHIRPS_01_31)
Jan_Stack

min_Jan <- as.numeric(cellStats(Jan_Stack,min)) #min
max_Jan <- as.numeric(cellStats(Jan_Stack,max)) #max
mean_Jan <- as.numeric(cellStats(Jan_Stack,stat='mean')) #mean - not commonly defined
names_Jan <- names(Jan_Stack)
min_Jan
max_Jan
mean_Jan
names_Jan
tab_Jan <- data.frame(names_Jan,min_Jan,max_Jan,mean_Jan)
tab_Jan

## February

ls(pattern="CHIRPS_02") #got us the list of objects that we wanted to append
Feb_Stack <- stack(CHIRPS_02_01,CHIRPS_02_02,CHIRPS_02_03,CHIRPS_02_04,CHIRPS_02_05,CHIRPS_02_06,CHIRPS_02_07,CHIRPS_02_08,CHIRPS_02_09,CHIRPS_02_10,CHIRPS_02_11,CHIRPS_02_12,CHIRPS_02_13,CHIRPS_02_14,CHIRPS_02_15,CHIRPS_02_16,CHIRPS_02_17,CHIRPS_02_18,CHIRPS_02_19,CHIRPS_02_20,CHIRPS_02_21,CHIRPS_02_22,CHIRPS_02_23,CHIRPS_02_24,CHIRPS_02_25,CHIRPS_02_26,CHIRPS_02_27,CHIRPS_02_28,CHIRPS_02_29)
Feb_Stack

min_Feb <- as.numeric(cellStats(Feb_Stack,min)) #min
max_Feb <- as.numeric(cellStats(Feb_Stack,max)) #max
mean_Feb <- as.numeric(cellStats(Feb_Stack,stat='mean')) #mean - not commonly defined
names_Feb <- names(Feb_Stack)
min_Feb
max_Feb
mean_Feb
names_Feb
tab_Feb <- data.frame(names_Feb,min_Feb,max_Feb,mean_Feb)
tab_Feb

## March

ls(pattern="CHIRPS_03") #got us the list of objects that we wanted to append
Mar_Stack <- stack(CHIRPS_03_01,CHIRPS_03_02,CHIRPS_03_03,CHIRPS_03_04,CHIRPS_03_05,CHIRPS_03_06,CHIRPS_03_07,CHIRPS_03_08,CHIRPS_03_09,CHIRPS_03_10,CHIRPS_03_11,CHIRPS_03_12,CHIRPS_03_13,CHIRPS_03_14,CHIRPS_03_15,CHIRPS_03_16,CHIRPS_03_17,CHIRPS_03_18,CHIRPS_03_19,CHIRPS_03_20,CHIRPS_03_21,CHIRPS_03_22,CHIRPS_03_23,CHIRPS_03_24,CHIRPS_03_25,CHIRPS_03_26,CHIRPS_03_27,CHIRPS_03_28,CHIRPS_03_29,CHIRPS_03_30,CHIRPS_03_31)
Mar_Stack

min_Mar <- as.numeric(cellStats(Mar_Stack,min)) #min
max_Mar <- as.numeric(cellStats(Mar_Stack,max)) #max
mean_Mar <- as.numeric(cellStats(Mar_Stack,stat='mean')) #mean - not commonly defined
names_Mar <- names(Mar_Stack)
min_Mar
max_Mar
mean_Mar
names_Mar
tab_Mar <- data.frame(names_Mar,min_Mar,max_Mar,mean_Mar)
tab_Mar

## April

ls(pattern="CHIRPS_04") #got us the list of objects that we wanted to append
Apr_Stack <- stack(CHIRPS_04_01,CHIRPS_04_02,CHIRPS_04_03,CHIRPS_04_04,CHIRPS_04_05,CHIRPS_04_06,CHIRPS_04_07,CHIRPS_04_08,CHIRPS_04_09,CHIRPS_04_10,CHIRPS_04_11,CHIRPS_04_12,CHIRPS_04_13,CHIRPS_04_14,CHIRPS_04_15,CHIRPS_04_16,CHIRPS_04_17,CHIRPS_04_18,CHIRPS_04_19,CHIRPS_04_20,CHIRPS_04_21,CHIRPS_04_22,CHIRPS_04_23,CHIRPS_04_24,CHIRPS_04_25,CHIRPS_04_26,CHIRPS_04_27,CHIRPS_04_28,CHIRPS_04_29,CHIRPS_04_30)
Apr_Stack

min_Apr <- as.numeric(cellStats(Apr_Stack,min)) #min
max_Apr <- as.numeric(cellStats(Apr_Stack,max)) #max
mean_Apr <- as.numeric(cellStats(Apr_Stack,stat='mean')) #mean - not commonly defined
names_Apr <- names(Apr_Stack)
min_Apr
max_Apr
mean_Apr
names_Apr
tab_Apr <- data.frame(names_Apr,min_Apr,max_Apr,mean_Apr)
tab_Apr

## May

ls(pattern="CHIRPS_05") #got us the list of objects that we wanted to append
May_Stack <- stack(CHIRPS_05_01,CHIRPS_05_02,CHIRPS_05_03,CHIRPS_05_04,CHIRPS_05_05,CHIRPS_05_06,CHIRPS_05_07,CHIRPS_05_08,CHIRPS_05_09,CHIRPS_05_10,CHIRPS_05_11,CHIRPS_05_12,CHIRPS_05_13,CHIRPS_05_14,CHIRPS_05_15,CHIRPS_05_16,CHIRPS_05_17,CHIRPS_05_18,CHIRPS_05_19,CHIRPS_05_20,CHIRPS_05_21,CHIRPS_05_22,CHIRPS_05_23,CHIRPS_05_24,CHIRPS_05_25,CHIRPS_05_26,CHIRPS_05_27,CHIRPS_05_28,CHIRPS_05_29,CHIRPS_05_30,CHIRPS_05_31)
May_Stack

min_May <- as.numeric(cellStats(May_Stack,min)) #min
max_May <- as.numeric(cellStats(May_Stack,max)) #max
mean_May <- as.numeric(cellStats(May_Stack,stat='mean')) #mean - not commonly defined
names_May <- names(May_Stack)
min_May
max_May
mean_May
names_May
tab_May <- data.frame(names_May,min_May,max_May,mean_May)
tab_May

## June

ls(pattern="CHIRPS_06") #got us the list of objects that we wanted to append
Jun_Stack <- stack(CHIRPS_06_01,CHIRPS_06_02,CHIRPS_06_03,CHIRPS_06_04,CHIRPS_06_05,CHIRPS_06_06,CHIRPS_06_07,CHIRPS_06_08,CHIRPS_06_09,CHIRPS_06_10,CHIRPS_06_11,CHIRPS_06_12,CHIRPS_06_13,CHIRPS_06_14,CHIRPS_06_15,CHIRPS_06_16,CHIRPS_06_17,CHIRPS_06_18,CHIRPS_06_19,CHIRPS_06_20,CHIRPS_06_21,CHIRPS_06_22,CHIRPS_06_23,CHIRPS_06_24,CHIRPS_06_25,CHIRPS_06_26,CHIRPS_06_27,CHIRPS_06_28,CHIRPS_06_29,CHIRPS_06_30)
Jun_Stack

min_Jun <- as.numeric(cellStats(Jun_Stack,min)) #min
max_Jun <- as.numeric(cellStats(Jun_Stack,max)) #max
mean_Jun <- as.numeric(cellStats(Jun_Stack,stat='mean')) #mean - not commonly defined
names_Jun <- names(Jun_Stack)
min_Jun
max_Jun
mean_Jun
names_Jun
tab_Jun <- data.frame(names_Jun,min_Jun,max_Jun,mean_Jun)
tab_Jun

## July

ls(pattern="CHIRPS_07") #got us the list of objects that we wanted to append
Jul_Stack <- stack(CHIRPS_07_01,CHIRPS_07_02,CHIRPS_07_03,CHIRPS_07_04,CHIRPS_07_05,CHIRPS_07_06,CHIRPS_07_07,CHIRPS_07_08,CHIRPS_07_09,CHIRPS_07_10,CHIRPS_07_11,CHIRPS_07_12,CHIRPS_07_13,CHIRPS_07_14,CHIRPS_07_15,CHIRPS_07_16,CHIRPS_07_17,CHIRPS_07_18,CHIRPS_07_19,CHIRPS_07_20,CHIRPS_07_21,CHIRPS_07_22,CHIRPS_07_23,CHIRPS_07_24,CHIRPS_07_25,CHIRPS_07_26,CHIRPS_07_27,CHIRPS_07_28,CHIRPS_07_29,CHIRPS_07_30,CHIRPS_07_31)
Jul_Stack

min_Jul <- as.numeric(cellStats(Jul_Stack,min)) #min
max_Jul <- as.numeric(cellStats(Jul_Stack,max)) #max
mean_Jul <- as.numeric(cellStats(Jul_Stack,stat='mean')) #mean - not commonly defined
names_Jul <- names(Jul_Stack)
min_Jul
max_Jul
mean_Jul
names_Jul
tab_Jul <- data.frame(names_Jul,min_Jul,max_Jul,mean_Jul)
tab_Jul

## August

ls(pattern="CHIRPS_08") #got us the list of objects that we wanted to append
Aug_Stack <- stack(CHIRPS_08_01,CHIRPS_08_02,CHIRPS_08_03,CHIRPS_08_04,CHIRPS_08_05,CHIRPS_08_06,CHIRPS_08_07,CHIRPS_08_08,CHIRPS_08_09,CHIRPS_08_10,CHIRPS_08_11,CHIRPS_08_12,CHIRPS_08_13,CHIRPS_08_14,CHIRPS_08_15,CHIRPS_08_16,CHIRPS_08_17,CHIRPS_08_18,CHIRPS_08_19,CHIRPS_08_20,CHIRPS_08_21,CHIRPS_08_22,CHIRPS_08_23,CHIRPS_08_24,CHIRPS_08_25,CHIRPS_08_26,CHIRPS_08_27,CHIRPS_08_28,CHIRPS_08_29,CHIRPS_08_30,CHIRPS_08_31)
Aug_Stack

min_Aug <- as.numeric(cellStats(Aug_Stack,min)) #min
max_Aug <- as.numeric(cellStats(Aug_Stack,max)) #max
mean_Aug <- as.numeric(cellStats(Aug_Stack,stat='mean')) #mean - not commonly defined
names_Aug <- names(Aug_Stack)
min_Aug
max_Aug
mean_Aug
names_Aug
tab_Aug <- data.frame(names_Aug,min_Aug,max_Aug,mean_Aug)
tab_Aug

## September

ls(pattern="CHIRPS_09") #got us the list of objects that we wanted to append
Sep_Stack <- stack(CHIRPS_09_01,CHIRPS_09_02,CHIRPS_09_03,CHIRPS_09_04,CHIRPS_09_05,CHIRPS_09_06,CHIRPS_09_07,CHIRPS_09_08,CHIRPS_09_09,CHIRPS_09_10,CHIRPS_09_11,CHIRPS_09_12,CHIRPS_09_13,CHIRPS_09_14,CHIRPS_09_15,CHIRPS_09_16,CHIRPS_09_17,CHIRPS_09_18,CHIRPS_09_19,CHIRPS_09_20,CHIRPS_09_21,CHIRPS_09_22,CHIRPS_09_23,CHIRPS_09_24,CHIRPS_09_25,CHIRPS_09_26,CHIRPS_09_27,CHIRPS_09_28,CHIRPS_09_29,CHIRPS_09_30)
Sep_Stack

min_Sep <- as.numeric(cellStats(Sep_Stack,min)) #min
max_Sep <- as.numeric(cellStats(Sep_Stack,max)) #max
mean_Sep <- as.numeric(cellStats(Sep_Stack,stat='mean')) #mean - not commonly defined
names_Sep <- names(Sep_Stack)
min_Sep
max_Sep
mean_Sep
names_Sep
tab_Sep <- data.frame(names_Sep,min_Sep,max_Sep,mean_Sep)
tab_Sep

## October

ls(pattern="CHIRPS_10") #got us the list of objects that we wanted to append
Oct_Stack <- stack(CHIRPS_10_01,CHIRPS_10_02,CHIRPS_10_03,CHIRPS_10_04,CHIRPS_10_05,CHIRPS_10_06,CHIRPS_10_07,CHIRPS_10_08,CHIRPS_10_09,CHIRPS_10_10,CHIRPS_10_11,CHIRPS_10_12,CHIRPS_10_13,CHIRPS_10_14,CHIRPS_10_15,CHIRPS_10_16,CHIRPS_10_17,CHIRPS_10_18,CHIRPS_10_19,CHIRPS_10_20,CHIRPS_10_21,CHIRPS_10_22,CHIRPS_10_23,CHIRPS_10_24,CHIRPS_10_25,CHIRPS_10_26,CHIRPS_10_27,CHIRPS_10_28,CHIRPS_10_29,CHIRPS_10_30,CHIRPS_10_31)
Oct_Stack

min_Oct <- as.numeric(cellStats(Oct_Stack,min)) #min
max_Oct <- as.numeric(cellStats(Oct_Stack,max)) #max
mean_Oct <- as.numeric(cellStats(Oct_Stack,stat='mean')) #mean - not commonly defined
names_Oct <- names(Oct_Stack)
min_Oct
max_Oct
mean_Oct
names_Oct
tab_Oct <- data.frame(names_Oct,min_Oct,max_Oct,mean_Oct)
tab_Oct

## November

ls(pattern="CHIRPS_11") #got us the list of objects that we wanted to append
Nov_Stack <- stack(CHIRPS_11_01,CHIRPS_11_02,CHIRPS_11_03,CHIRPS_11_04,CHIRPS_11_05,CHIRPS_11_06,CHIRPS_11_07,CHIRPS_11_08,CHIRPS_11_09,CHIRPS_11_10,CHIRPS_11_11,CHIRPS_11_12,CHIRPS_11_13,CHIRPS_11_14,CHIRPS_11_15,CHIRPS_11_16,CHIRPS_11_17,CHIRPS_11_18,CHIRPS_11_19,CHIRPS_11_20,CHIRPS_11_21,CHIRPS_11_22,CHIRPS_11_23,CHIRPS_11_24,CHIRPS_11_25,CHIRPS_11_26,CHIRPS_11_27,CHIRPS_11_28,CHIRPS_11_29,CHIRPS_11_30)
Nov_Stack

min_Nov <- as.numeric(cellStats(Nov_Stack,min)) #min
max_Nov <- as.numeric(cellStats(Nov_Stack,max)) #max
mean_Nov <- as.numeric(cellStats(Nov_Stack,stat='mean')) #mean - not commonly defined
names_Nov <- names(Nov_Stack)
min_Nov
max_Nov
mean_Nov
names_Nov
tab_Nov <- data.frame(names_Nov,min_Nov,max_Nov,mean_Nov)
tab_Nov

## December

ls(pattern="CHIRPS_12") #got us the list of objects that we wanted to append
Dec_Stack <- stack(CHIRPS_12_01,CHIRPS_12_02,CHIRPS_12_03,CHIRPS_12_04,CHIRPS_12_05,CHIRPS_12_06,CHIRPS_12_07,CHIRPS_12_08,CHIRPS_12_09,CHIRPS_12_10,CHIRPS_12_11,CHIRPS_12_12,CHIRPS_12_13,CHIRPS_12_14,CHIRPS_12_15,CHIRPS_12_16,CHIRPS_12_17,CHIRPS_12_18,CHIRPS_12_19,CHIRPS_12_20,CHIRPS_12_21,CHIRPS_12_22,CHIRPS_12_23,CHIRPS_12_24,CHIRPS_12_25,CHIRPS_12_26,CHIRPS_12_27,CHIRPS_12_28,CHIRPS_12_29,CHIRPS_12_30,CHIRPS_12_31)
Dec_Stack

min_Dec <- as.numeric(cellStats(Dec_Stack,min)) #min
max_Dec <- as.numeric(cellStats(Dec_Stack,max)) #max
mean_Dec <- as.numeric(cellStats(Dec_Stack,stat='mean')) #mean - not commonly defined
names_Dec <- names(Dec_Stack)
min_Dec
max_Dec
mean_Dec
names_Dec
tab_Dec <- data.frame(names_Dec,min_Dec,max_Dec,mean_Dec)
tab_Dec

#********************** ALL DATA FRAMES ARE CREATED, TIME TO RENAME AND JOIN THEM ALL *******************************#

#list of all dataframes to merge
#tab_Jan
#tab_Feb
#tab_Mar
#tab_Apr
#tab_May
#tab_Jun
#tab_Jul
#tab_Aug
#tab_Sep
#tab_Oct
#tab_Nov
#tab_Dec

#renaming all columns for consistent names (dplyr method - but doesn't seem to work with most recent Rstudio update on work network)
#tab_Jan %>% rename(min = min_Jan, max = max_Jan, mean = mean_Jan, names = names_Jan)
#tab_Feb %>% rename(min = min_Feb, max = max_Feb, mean = mean_Feb, names = names_Feb)
#tab_Mar %>% rename(min = min_Mar, max = max_Mar, mean = mean_Mar, names = names_Mar)
#tab_Apr %>% rename(min = min_Apr, max = max_Apr, mean = mean_Apr, names = names_Apr)
#tab_May %>% rename(min = min_May, max = max_May, mean = mean_May, names = names_May)
#tab_Jun %>% rename(min = min_Jun, max = max_Jun, mean = mean_Jun, names = names_Jun)
#tab_Jul %>% rename(min = min_Jul, max = max_Jul, mean = mean_Jul, names = names_Jul)
#tab_Aug %>% rename(min = min_Aug, max = max_Aug, mean = mean_Aug, names = names_Aug)
#tab_Sep %>% rename(min = min_Sep, max = max_Sep, mean = mean_Sep, names = names_Sep)
#tab_Oct %>% rename(min = min_Oct, max = max_Oct, mean = mean_Oct, names = names_Oct)
#tab_Nov %>% rename(min = min_Nov, max = max_Nov, mean = mean_Nov, names = names_Nov)
#tab_Dec %>% rename(min = min_Dec, max = max_Dec, mean = mean_Dec, names = names_Dec)

##renaming columns, base R method
#Jan
names(tab_Jan)[names(tab_Jan) == "min_Jan"] <- "min"
names(tab_Jan)[names(tab_Jan) == "max_Jan"] <- "max"
names(tab_Jan)[names(tab_Jan) == "mean_Jan"] <- "mean"
names(tab_Jan)[names(tab_Jan) == "names_Jan"] <- "names" 
tab_Jan
#Feb
names(tab_Feb)[names(tab_Feb) == "min_Feb"] <- "min"
names(tab_Feb)[names(tab_Feb) == "max_Feb"] <- "max"
names(tab_Feb)[names(tab_Feb) == "mean_Feb"] <- "mean"
names(tab_Feb)[names(tab_Feb) == "names_Feb"] <- "names" 
tab_Feb
#Mar
names(tab_Mar)[names(tab_Mar) == "min_Mar"] <- "min"
names(tab_Mar)[names(tab_Mar) == "max_Mar"] <- "max"
names(tab_Mar)[names(tab_Mar) == "mean_Mar"] <- "mean"
names(tab_Mar)[names(tab_Mar) == "names_Mar"] <- "names" 
tab_Mar
#Apr
names(tab_Apr)[names(tab_Apr) == "min_Apr"] <- "min"
names(tab_Apr)[names(tab_Apr) == "max_Apr"] <- "max"
names(tab_Apr)[names(tab_Apr) == "mean_Apr"] <- "mean"
names(tab_Apr)[names(tab_Apr) == "names_Apr"] <- "names" 
tab_Apr
#May
names(tab_May)[names(tab_May) == "min_May"] <- "min"
names(tab_May)[names(tab_May) == "max_May"] <- "max"
names(tab_May)[names(tab_May) == "mean_May"] <- "mean"
names(tab_May)[names(tab_May) == "names_May"] <- "names" 
tab_May
#Jun
names(tab_Jun)[names(tab_Jun) == "min_Jun"] <- "min"
names(tab_Jun)[names(tab_Jun) == "max_Jun"] <- "max"
names(tab_Jun)[names(tab_Jun) == "mean_Jun"] <- "mean"
names(tab_Jun)[names(tab_Jun) == "names_Jun"] <- "names" 
tab_Jun
#Jul
names(tab_Jul)[names(tab_Jul) == "min_Jul"] <- "min"
names(tab_Jul)[names(tab_Jul) == "max_Jul"] <- "max"
names(tab_Jul)[names(tab_Jul) == "mean_Jul"] <- "mean"
names(tab_Jul)[names(tab_Jul) == "names_Jul"] <- "names"
tab_Jul
#Aug
names(tab_Aug)[names(tab_Aug) == "min_Aug"] <- "min"
names(tab_Aug)[names(tab_Aug) == "max_Aug"] <- "max"
names(tab_Aug)[names(tab_Aug) == "mean_Aug"] <- "mean"
names(tab_Aug)[names(tab_Aug) == "names_Aug"] <- "names" 
tab_Aug
#Sep
names(tab_Sep)[names(tab_Sep) == "min_Sep"] <- "min"
names(tab_Sep)[names(tab_Sep) == "max_Sep"] <- "max"
names(tab_Sep)[names(tab_Sep) == "mean_Sep"] <- "mean"
names(tab_Sep)[names(tab_Sep) == "names_Sep"] <- "names" 
tab_Sep
#Oct
names(tab_Oct)[names(tab_Oct) == "min_Oct"] <- "min"
names(tab_Oct)[names(tab_Oct) == "max_Oct"] <- "max"
names(tab_Oct)[names(tab_Oct) == "mean_Oct"] <- "mean"
names(tab_Oct)[names(tab_Oct) == "names_Oct"] <- "names" 
tab_Oct
#Nov
names(tab_Nov)[names(tab_Nov) == "min_Nov"] <- "min"
names(tab_Nov)[names(tab_Nov) == "max_Nov"] <- "max"
names(tab_Nov)[names(tab_Nov) == "mean_Nov"] <- "mean"
names(tab_Nov)[names(tab_Nov) == "names_Nov"] <- "names" 
tab_Nov
#Dec
names(tab_Dec)[names(tab_Dec) == "min_Dec"] <- "min"
names(tab_Dec)[names(tab_Dec) == "max_Dec"] <- "max"
names(tab_Dec)[names(tab_Dec) == "mean_Dec"] <- "mean"
names(tab_Dec)[names(tab_Dec) == "names_Dec"] <- "names" 
tab_Dec

## rbinding everything together (since dplyr didn't work load on this system - no "crayon" package)

rbind_12 <- rbind(tab_Jan,tab_Feb)
rbind_13 <- rbind(rbind_12,tab_Mar)
rbind_14 <- rbind(rbind_13,tab_Apr)
rbind_15 <- rbind(rbind_14,tab_May)
rbind_16 <- rbind(rbind_15,tab_Jun)
rbind_17 <- rbind(rbind_16,tab_Jul)
rbind_18 <- rbind(rbind_17,tab_Aug)
rbind_19 <- rbind(rbind_18,tab_Sep)
rbind_110 <- rbind(rbind_19,tab_Oct)
rbind_111 <- rbind(rbind_110,tab_Nov)
rbind_112 <- rbind(rbind_111,tab_Dec) #this is our final dataset, and should consist of 366 rows

rbind_112
rbind_112$Month <- str_sub(rbind_112$names,start=-5,end=-4)
rbind_112$Day <- str_sub(rbind_112$names,start=-2,end=-1)
rbind_112$ObjName <- str_c("CHIRPS_",rbind_112$Month,"_",rbind_112$Day)
rbind_112

#writing out to CSV for further analysis
write.csv(rbind_112,file=paste0("CHIRPS_SumStats_ForGraphic.csv"))