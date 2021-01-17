# Data Viz for Research - Workshop Pack

----

## Contents 

This repository contents the following: 

| Files/Folders           | Description |
|-------------------------|-------------|
| /R_files                | Main Folder for R-files |
| /R_files/Session_1      | Main Folder containing the Session 1 worksheets |
| /R_files/Session_2      | Main Folder containing the Session 2 worksheets |
| /R_files/Solutions      | Main Folder containing the Solutions to Session 1 & 2 |
| /R_files/introduction.R | Introduction R Script File |
| /data                   | Main Folder containing the workshop data |
| /data/... .csv          | CSV data files |
| /data/sampledata.R      | R Script used to sample the original CSV data for the workshop |
| /images                 | Images used in the presentation and other part |
| /presentations          | Main Folder containing the .Rmd and .Html files for the presentation |
| dataviz_research.Rproj  | R Project file for the workshop |


----

## Workshop Preparation 

Please ensure the machine you will be working from during the session has an Rstudio bundle installed correctly, once completed, please complete the following steps to familiarise yourself with the RStudio interface.

	1) Open Rstudio and Load the Core R-project File (dataviz_research.Rproj)
		- Start Rstudio, clicking "Run application" on your Software Catalogue Application pop-out window.
		- This will open an empty R Studio Project Space, within this space load the Core Project file
		- To do this, click:
			"Project:(None)" located in the top right corner of your screen
			Click "Open Project..." and locate and open the .Rproj file
		- This will open and load the Core R-project file which will already have open the Introduction.R file
	2) Highlight and Run the lines of code from line 3 onwards, this will install and load the packages "Tidyverse" and others, which includes our main plotting 
		package "ggplot2". Please note, once your have installed the packages once you won't need to install them again, 
		simply reload them using the function "library(tidyverse)". This will additionally load the data this session will use.
	2a) To run packages, use the "Run Icon" located in the top bar of the code tab. (Run looks like a notebook with only a green arrow (but not a blue arrow)). 
	2b) Please note, in the "Console" panel, located below the code tab, you will note "warnings" being mentioned:
		For example: "2: package 'ggplot2' was built under R version 3.6.3"
		These warnings can be ignored, as we are using a legacy version of R & Rstudio however these packages will function fine in this format. 

