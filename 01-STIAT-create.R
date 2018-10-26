# load iatgen library
library(iatgen)

# writeSCIATfull()
## (1) configures JavaScript and HTML files, 
## (2) copies them into Qualtrics, 
## (3) configures the QUaltrics files

writeSCIATfull(IATname = "White ST-IAT (test)",    # title of ST-IAT  
               posname = "White",  # TARGET title
               Aname = "Positive", 
               Bname = "Negative", 
               catType = "words", 
               poswords = c("White1", "White2", "White3", "White4", "White5", "White6", "White7"), 
               tgtType = "words", 
               Awords = c("Good1", "Good2", "Good3", "Good4", "Good5", "Good6", "Good7"), 
               Bwords = c("Bad1", "Bad2", "Bad3", "Bad4", "Bad5", "Bad6", "Bad7"),
             
               # advanced options with recommended IAT settings
               n = c(24, 48, 24, 48), 
               qsf = TRUE, 
               note = TRUE,
               correct.error = TRUE,
               pause = 250, 
               errorpause = 300, # not used if correct.error = TRUE
               tgtCol = "black",
               catCol = "green"

)