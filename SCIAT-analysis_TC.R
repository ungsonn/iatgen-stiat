#Scoring is tricky, because the block numbers are different (only 4 blocks per IAT, instead of 7).

 

#This should give you a hint, although you will need to adjust the numbers based on whatever it is that you’re doing.

 

 

#### IAT 1

### Collapse  IAT critical blocks  down ####

dat$compatible.crit.1 <- combineIATfourblocks(dat$Q94, dat$Q100, dat$Q102, dat$Q108)

dat$incompatible.crit.1 <- combineIATfourblocks(dat$Q96, dat$Q98, dat$Q104, dat$Q106)

 

### Collapse  IAT practice blocks ####

dat$compatible.prac.1 <- combineIATfourblocks(dat$Q93, dat$Q99, dat$Q101, dat$Q107)

dat$incompatible.prac.1 <- combineIATfourblocks(dat$Q95, dat$Q97, dat$Q103, dat$Q105)

 

### Clean the IAT ###

## D-BUILT.IN: USE THIS IF FORCED ERROR CORRECTION WAS ENABLED PER GREENWALD ET AL 2003

clean.1 <- cleanIAT(dat$compatible.prac.1, dat$compatible.crit.1, dat$incompatible.prac.1, dat$incompatible.crit.1, error.penalty = FALSE)