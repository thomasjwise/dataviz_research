## Beginners Worksheet Short Form Part 2========================================

## Package and Data Loading

library(tidyverse)
library(RColorBrewer)

options(scipen = 999)

gamingdata_samp100 = read.csv("../data/gamingdata_samp100.csv")
gamingdata_samp5000 = read.csv("../data/gamingdata_samp5000.csv")


## Section 5: Layering different geom's ========================================
## Exercise 11: Using the code developed in Section 2 (Age, Hours and Total Spin Score) 
  ## add an additional *geom_jitter()* layer which plots the GAD score.




## Exercise 12: Expanding on the code from Exercise 11, replace the colour variable 
  ## (currently Gender) with a colour to differentiate between SPIN and GAD. 
  ## You can add back in Gender as a shape variable (https://ggplot2.tidyverse.org/articles/ggplot2-specs.html)






## Exercise 13: Conducting a direct swap between a colour ("blue" or "red")   
  ## and the variable Gender, does not produce a usable legend. 
  ## As such, remove the colour parameter from the *mapping = aes()* component.





## Exercise 14: Although this corrects the colours, there is no usable legend. 
  ## To add a colour specific legend, you must return the *colour =* parameter to inside mapping=aes(), 
  ## alongside adding *scale_colour_identity()*. 
  ## To apply this, use the given template to specify what the colours indicates. 
  ## Additionally correct the axis names so they represent the contents of the plot.


  scale_colour_identity(name = ??, 
                        breaks = c(??, ??), 
                        labels = c(??, ??),
                        guide = "legend")


## Exercise 15: Colours and legends can also be used for continuous variables. 
  ## Return to just a single variable (SPIN_T), and specify the colour parameter as the hours variable (Hours). 
  ## Is this clearer than the when Hours was specified as the size variable?**


## Exercise 16: To improve the clarity of the scale, you can use the function *scale_colour_gradient()* 
  ## to specify the colours of the low and high points as well as any specific breaks. 
  ## Add this function to the previous plot (Ex.14), using the template provided. 
  ## Think about what are good breaks to use within this function.


  scale_colour_gradient(low = ??,
                        high = ??,
                        breaks = ??)
  

## Exercise 17: An alternative to layering multiple plots on on top of each other, 
  ## is to use *facet_wrap()* or *facet_grid()* to produce graphs side by side.
  ## Using this a faceting function you can split the graphs up by a specific variable. 
  ## Try using *facet_wrap()* to split the graph produced in Ex.14, by Gender.

  facet_grid(.~ ??Variable??)

  
  
  
## Exercise 18. Alternatively you can split by a factor not included in the graph at the point of creation. 
  ## Try using *facet_grid()* again to this time split the same graph by "Platform".
  
  
  
## Section 6: Publishing Plots from ggplot2 ====================================

## Exercise 19a: Using the function *ggsave()*, export your last plot (using the parameter *last_plot()*). 
  ## Use the template provided to structure your export.
  
  

ggsave(filename = "test_plot.png", 
       plot = last_plot())

## Exercise 19b: Alternatively, you can set a specific graph to a variable (for example: "plot_to_print") 
  ## and past it in place of *last_plot()*. Additionally, you can change parameters 
  ## such as the height and width, dpi, scale and type of export accordingly. 
  ## Try to export the plot you made for Ex.16, as a JPEG (.jpeg), with a dpi of 500 and a size of 5cmx10cm.
  
  
  

## Exercise 20: Alternatively, you can also use the export function in the Rstudio UI to export your plots. 
  ## To do this, click export in your plots tab (if plots are produced there) and export accordingly. 
  ## If you are using the accompanying worksheet (which is a .R script), 
  ## try saving any of your previous plots as .pdf files following the instructions in RStudio