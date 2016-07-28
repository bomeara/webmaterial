library(cv)
CreateMarkdown()
FinalCompileCV()
system(paste("cp ", tempdir(), "/OM* .", sep=""))
