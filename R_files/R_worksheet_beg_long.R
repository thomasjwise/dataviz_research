## Beginners Worksheet Short Form Part 1========================================

## Package and Data Loading

library(tidyverse)
library(RColorBrewer)

options(scipen = 999)

gamingdata_samp <- read_csv("data/gamingdata_samp.csv")

## Section 1: ggplot2 vs plot ==================================================

  ## Exercise 1: Plotting *SPIN_T* against *Age* using both the `plot()` and `ggplot()` function, 
  ## discuss which has more potential in displaying data clearly.

  ## Plotting using plot()

    plot(data = ??,
     y-var ~ x-var)


  ## Plotting using ggplot()

    ggplot(data = ??, 
       mapping = aes(
         x = ??
         y = ??
         )) + 
       geom_point()
  
  ## Exercise 2: Expand the plot to group these points by Gender, 
  ## which provides us with more information and is easier to achieve? 
  ## Remember, you'll need to recode gamingdata_samp$Gender as a factor using the function:
  

  ## Plotting using plot()
  
    gamingdata_samp$Gender <- as.factor(gamingdata_samp$Gender)
  
    plot(data = ??,
         y-var ~ x-var,
         col(c("blue", "red")[??])))

  ## Plotting using ggplot()

  ggplot(data = ??, 
         mapping = aes(
           x = ??,
           y = ??,
           colour = ??
         )) + 
    geom_point()

## Section 2: Basic Plotting Using ggplot ======================================

  ## Exercise 3: Change the size parameter to *Hours* to see if there is a trend 
  ## between the amount of hours, age and total SPIN score.

  ggplot(data = ??, 
         mapping = aes(
           x = ??,
           y = ??,
           colour = ??,
           size = ??
         )) +
    geom_point()
  
  ## Exercise 4: Change the geom, from *geom_point()* to *geom_jitter()* and 
  ## change the alpha parameter to 0.5 to more clearly see the relationship
  
  

  ## Exercise 5: Change the Labels on the X and Y axis' and provide 
  ## a suitable title for the graph

  + labs(x = ??,
       y = ??,
       title = ??)

## Section 3: Different geom's different plots =================================
  
  ## Exercise 6: Using *geom_bar()* plot the number of different cases in each gender
  ggplot(data = gamingdata_samp,
         mapping = aes(x = ??)) + 
    geom_bar()
  
  
  ## Exercise 7: Expand upon the *geom_bar()* plot, to determine the average 
  ## (mean) number of Hours played by each gender.
  # Hint: Ensure to add *stat = "summary"* into your *geom_bar()* function.
  
  ggplot(data = gamingdata_samp,
         mapping = aes(x = ??, y = ??)) + 
    geom_bar(stat = "summary", "mean")
  

  ## Exercise 8: Expanding again on the plot created in Exercise 6, 
  ## after using the following code to convert the Platform variable into a factor, 
  ## specify the fill value to Platform.

  gamingdata_samp$Platform <- as.factor(gamingdata_samp$Platform)
  
  ggplot(data = gamingdata_samp,
         mapping = aes(x = ??, fill = ??)) + 
    geom_bar()
  
  ## Exercise 9: Through adding the appropriate limits function 
  ## (xlim(), ylim(), lims()) in ggplot() set the upper threshold of your plot to 5,000


## Section 4: Customization Part 1 =============================================
  
  ## Exercise 10: Using all the customization skills we have already discussed 
  ## (labs(), lims() and geom's), examine the relationship between an individuals Age, 
  ## Number of Hours playing, their employment and what platform they use. 
  ## Once completed, add one of the following themes to the end of your code, 
  ## which looks best (to you): 
  
  ## theme_bw(), theme_minimal(), theme_void(), theme_dark(), theme_classic()
  ## Hint: Consider using the mapping aesthetics such as *colour*, *size*, *shape*, 
  ## *alpha* etc, to map the categorical variables.
