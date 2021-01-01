Welcome to the Data Visualisation for Research in R welcome pack. 

=====

Within your welcome pack you should find the following:
	- This README.txt document, containing information about setup and preparation for the session.
	- The session slides (html)
	- A Core R-Project File, which we will be working from, aRt_with_R.Rproj,
	- .RData & .Rhistory documents (These may be hidden) - these are core documents for the .Rproj file, but don't panic about them! 
	- An introduction file, introduction.R
	- This sessions accompanying worksheet, both for initial R-users (R_worksheet_beg.R) and 
		advanced R-users (R_worksheet_adv.R).

	- Files with the extension, .R, are located in the R Files folder. 

======

Before the session: 

Please ensure the machine you will be working from during the session has an Rstudio bundle installed correctly, once completed, please complete the following steps to familiarise yourself with the RStudio interface.

	1) Open Rstudio and Load the Core R-project File (dataviz_research.Rproj)
		- Start Rstudio, clicking "Run application" on your Software Catalogue Application pop-out window.
		- This will open an empty R Studio Project Space, within this space load the Core Project file
		- To do this, click:
			"Project:(None)" located in the top right corner of your screen
			Click "Open Project..." and locate and open the .Rproj file
		- This will open and load the Core R-project file which will already have open the Introduction.R file
	2) Highlight and Run Lines 3 to 10, this will install and load the packages "Tidyverse" and others, which includes our main plotting 
		package "ggplot2". Please note, once your have installed the packages once you won't need to install them again, 
		simply reload them using the function "library(tidyverse)"
	2a) To run packages, use the "Run Icon" located in the top bar of the code tab. (Run looks like a notebook with only a green arrow (but not a blue arrow)). 
	2b) Please note, in the "Console" panel, located below the code tab, you will note "warnings" being mentioned:
		For example: "2: package 'ggplot2' was built under R version 3.6.3"
		These warnings can be ignored, as we are using a legacy version of R & Rstudio however these packages will function fine in this format. 







