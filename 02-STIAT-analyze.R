# Analyzing ST-IAT Data


# {setup} -----------------------------------------------------------------

library(iatgen)
library(tidyverse)


# import and tidy ---------------------------------------------------------

# import data
data <- read.csv("stiat_Chelsea_FC.csv", header = TRUE)

# remove first row
data <- data[-1, ]

# clean up
#data <- data %>% 
#  select(12:29, 
#         start = V8, 
#         end = V9)

#### IAT 1

### Collapse  IAT critical blocks  down ####

# This should include the critical blocks from each of the 4 permutations

data$compatible.crit <- combineIATfourblocks(data$Q2.RP2, data$Q8.LN4, data$Q10.LP2, data$Q16.RN4)

data$incompatible.crit <- combineIATfourblocks(data$Q4.RP4, data$Q6.LN2, data$Q12.LP4, data$Q14.RN2)


### Collapse  IAT practice blocks ####

data$compatible.prac <- combineIATfourblocks(data$Q1.RP1, data$Q7.LN3, data$Q9.LP1, data$Q15.RN3)

data$incompatible.prac <- combineIATfourblocks(data$Q3.RP3, data$Q5.LN1, data$Q11.LP3, data$Q13.RN1)



### Clean the IAT ###

## D-BUILT.IN: USE THIS IF FORCED ERROR CORRECTION WAS ENABLED PER GREENWALD ET AL 2003

clean <- cleanIAT(data$compatible.prac, data$compatible.crit, data$incompatible.prac, data$incompatible.crit, error.penalty = FALSE)

# Return D value only...
cleanIAT(data$compatible.prac, data$compatible.crit, data$incompatible.prac, data$incompatible.crit, error.penalty = FALSE)$D
