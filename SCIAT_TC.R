library(iatgen)
writeSCIATfull(IATname="random",
             posname="Pleasant",
             Aname="Flowers",
             Bname="Insects",
             catType="words",
             poswords = c("Gentle", "Enjoy", "Heaven", "Cheer", "Happy", "Love", "Friend"),
             
             tgtType="words",
             Awords = c("Orchid", "Tulip", "Rose", "Daffodil", "Daisy", "Lilac", "Lily"),
             Bwords = c("Wasp", "Flea", "Roach", "Centipede", "Moth", "Bedbug", "Gnat"),
             
             #advanced options with recommended IAT settings
             n=c(24, 72, 24, 72),
             qsf=T, 
             note=T,
             correct.error=T,
             pause=250, 
             errorpause=300, #not used if correct.error=TRUE
             tgtCol="black",
             catCol="green"

)
