library(cv)
CreateMarkdown()
system(paste("cp ", tempdir(), "/*md .", sep=""))
system(paste("cp ", system.file("extdata", package="cv"), "/*md .", sep=""))
markdown.files <- system("ls -1 *.md", intern=TRUE)
for (i in sequence(length(markdown.files))) {
  system(paste("pandoc ", markdown.files[i], " -o ", gsub(".md", ".html", markdown.files[i]), sep=""))
}
html.files <- system("ls -1 *.html", intern=TRUE)
for( f in html.files ){

  x <- readLines(f)
  y <- gsub( '<tr class="header">', '<tr class="tableheader">', x )
  cat(y, file=f, sep="\n")

}
