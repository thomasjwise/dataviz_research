## Beginners Worksheet Short Form Part 1========================================

## Package and Data Loading

library(tidyverse)
library(RColorBrewer)

options(scipen = 999)

WDB_1999 <- read_csv("data/WDB_1999.csv")

## Section 1: ggplot2 vs plot ==================================================

  ## Exercise 1: Plotting *birthrate* against *deathrate* using both the 
  ## `plot()` and `ggplot()` function, discuss which has more potential in displaying data clearly.

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
  
  ## Exercise 2: Expand the plot to group these points by Continent, 
  ## which provides us with more information and is easier to achieve? 
  ## Remember, you'll need to recode WDB_1999$Continent as a factor using the function:
  

  ## Plotting using plot()
  
    WDB_1999$Continent <- as.factor(WDB_1999$Continent)
  
    plot(data = ??,
         y-var ~ x-var,
         col(c("blue", "light blue", "red", "pink", 
               "green", "dark green", "black", "purple")[??])))

  ## Plotting using ggplot()

  ggplot(data = ??, 
         mapping = aes(
           x = ??,
           y = ??,
           colour = ??
         )) + 
    geom_point()

## Section 2: Scatter Plots in ggplot ==========================================

  ## Exercise 3: Change the size parameter to *ed.years* to see if there is a,
  ## trend between amount of years in Education and the Birth and Death Rate, 
  ## set the alpha parameter to 0.5 to clearly see the relationships.

  ggplot(data = ??, 
         mapping = aes(
           x = ??,
           y = ??,
           colour = ??,
           size = ??
         )) +
    geom_point(alpha = ??)

  ## Exercise 4: Change the Labels on the X and Y axis' and provide 
  ## a suitable title for the graph

  + labs(x = ??,
       y = ??,
       title = ??)

## Section 3: Bar Charts and Histograms ========================================

  ## Exercise 5: Using the parameter `stat = "identity"` within the `geom_bar()`,
  ## function, create a bar chart of `Continent` plotted against the mean `birthrate` or `deathrate`

  ggplot(data = ??) + 
    geom_bar(stat = "identity", 
             mapping = aes(x = ??, 
                           y = mean(??, na.rm = TRUE))) 

  ## Exercise 6:  Using the function `geom_histogram()` create a histogram of 
  ## the *birthrate* and *deathrate* ** 

  ggplot(data = ??) + 
    geom_histogram(mapping = aes(x = ??), colour = "blue", alpha = 0.5) + 
    geom_histogram(mapping = aes(x = ??), colour = "red", alpha = 0.5)

## Section 4: Adding density plots to Histograms ===============================
  
  ## Exercise 7: Using the plot created in exercise 6, add the y-variable `..density..` 
  ## and `binwidth = 1` to `geom_histogram()` in addition to adding `geom_density()` 
  ## to add density lines to the Histogram**
  

  ggplot(data = ??) + 
    geom_histogram(mapping = aes(x = ??, y = ..density..), binwidth = 1, 
                   colour = "blue", alpha = 0.5) + 
    geom_histogram(mapping = aes(x = ??, y = ..density..), binwidth = 1, 
                   colour = "red", alpha = 0.5) + 
    geom_density(mapping = aes(x = ??), colour = "blue", alpha = 0.5) + 
    geom_density(mapping = aes(x = ??), colour = "red", alpha = 0.5)

  ## Exercise 8: Add the parameter, `adjust = 2` in the density plot, 
  ## to smooth this link and make it more easily interpretable**

  geom_density(mapping = aes(x = ??))

## Section 5: Extra Useful Tips and FunctionS ==================================
  
  ## Exercise 9: Use the `ggsave()` function to save your last plot**

  ggsave(filename = ??, 
         plot = last_plot())
