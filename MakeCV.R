library(devtools)
install_github("bomeara/cv")
library(cv)
CreateMarkdown()
FinalCompileCV()
system(paste("cp ", tempdir(), "/OM* .", sep=""))

#Stupid. But otherwise the header class for tables causes problems with the theme
x <- readLines("OMearaCV.html")
y <- gsub( '<tr class="header">', '<tr class="tableheader">', x )
cat(y, file="OMearaCV.html", sep="\n")
