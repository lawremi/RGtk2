## manage installed packages
installed <- installed.packages()
available <- available.packages()

getPackageNotes <- function() {
  if(exists(".packageNotes", envir=.GlobalEnv))
    return(.packageNotes)
  else
    return(data.frame(Package=character(), Note=character()))
}
savePackageNotes <- function(notesDF) 
  assign(".packageNotes", notesDF, envir=GlobalEnv)

notes <- getPackageNotes()

## Make a data frame 
df <- merge(available, installed, by="Package")
df <- subset(df, select=c("Package", "Version.x", "Version.y"))
names(df) <- c("Package","available","installed")

df <- merge(df, notes, all.x=TRUE)
df$Title <- sapply(df$Package, function(i) packageDescription(i, drop=TRUE, fields="Title"))


             
