library(iatgen)

# import data
# caution: iatgen may have altered wd()
data <- read.csv("White_STIAT_test_data.csv", header = TRUE)

#data2 <- read.csv("White_STIAT_test_data_nonleg.csv", header = TRUE)
 

#### IAT 1

### Collapse  IAT critical blocks  down ####

# This should include the critical blocks from each of the 4 permutations
# RP, RN, LP, LN
data$compatible.crit.1 <- combineIATfourblocks(data$Q5.RN1, data$Q6.RN2, data$Q7.RN3, data$Q8.RN4)

data$incompatible.crit.1 <- combineIATfourblocks(dat$Q96, dat$Q98, dat$Q104, dat$Q106)



# test unstring
test1 <- unlist(strsplit(as.character(data[2, 17]), ","))
test2 <- unlist(strsplit(as.character(data[2, 18]), ","))
test3 <- unlist(strsplit(as.character(data[2, 19]), ","))
test4 <- unlist(strsplit(as.character(data[2, 20]), ","))

 

### Collapse  IAT practice blocks ####

dat$compatible.prac.1 <- combineIATfourblocks(dat$Q93, dat$Q99, dat$Q101, dat$Q107)

dat$incompatible.prac.1 <- combineIATfourblocks(dat$Q95, dat$Q97, dat$Q103, dat$Q105)

 

### Clean the IAT ###

## D-BUILT.IN: USE THIS IF FORCED ERROR CORRECTION WAS ENABLED PER GREENWALD ET AL 2003

clean.1 <- cleanIAT(dat$compatible.prac.1, dat$compatible.crit.1, dat$incompatible.prac.1, dat$incompatible.crit.1, error.penalty = FALSE)