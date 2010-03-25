## additions to brew
require(brew)

## recurse down dir + filename until it exists
findFile <- function(filename, dir=getwd(), sep="/") {
  tmp <- unlist(strsplit(dir, sep))
  if(length(tmp) == 0)
    tmp <- ""
  for(i in length(tmp):1) {
    tmpdir <- paste(tmp[1:i], collapse=sep)
    file <- paste(tmpdir, filename, sep=sep)
    if(file.exists(file))
      return(file)
  }
  stop(paste(filename,"not found"))
}

## return text of brew output
## want to recurse
renderBrew <- function(file,  context=.GlobalEnv, text, ...) {
  con <- textConnection(".brew", open="w")
  if(!missing(text))
    brew(text=text, output=con)
  else
    brew(file, output=con)
  close(con)
  return(.brew)
}
