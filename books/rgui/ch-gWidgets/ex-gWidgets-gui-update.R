## example of updating selection widgets
library(gWidgets)

## return names of data frames as data frame
findDfs <- function(envir=.GlobalEnv) {
  tmp <- ls(envir=envir)
  ind <- sapply(tmp, function(i) {
    x <- get(i, envir=envir)
    is.data.frame(x)
  })
  if(length(ind) == 0)
    tmp <- c("")
  else
    tmp <- tmp[ind]
  return(data.frame(DataFrames=tmp, stringsAsFactors = FALSE))
}
                

## return variable names matching cond in data frame
findVars <- function(df, cond=function(x) TRUE, envir=.GlobalEnv) {
  ## df is data frame or name of data frame in given environment
  if(missing(df)) return(c(""))
  if(is.character(df))                  
    df <- get(df, envir=envir)
  ind <- sapply(df, cond)
  if(length(ind) == 0)
    tmp <- c("")
  else
    tmp <- names(df)[ind]
  return(tmp)
}


w <- gwindow("Updating selection widgets", visible=FALSE)
pg <- gpanedgroup(cont = w)
dfs <- gtable(findDfs(), cont = pg)
f <- gframe("Variables", cont = pg)
svalue(pg) <- .33

tbl <- glayout(cont = f, expand=TRUE)
tbl[1,1] <- "numeric"
tbl[1,2] <- (xCombo <- gcombobox(findVars(), cont = tbl)) #, width=200, height=40))
tbl[2,1] <- "factor"
tbl[2,2] <- (fCombo <- gcombobox(findVars(), cont = tbl))


visible(w) <- TRUE


## update UI
tag(dfs, "df") <- ""
updateUI <- function(...) {
  oldDf <- tag(dfs, "df")
  newDf <- svalue(dfs)
  tag(dfs, "df") <- newDf
  if(length(newDf) == 0 || length(oldDf) == 0 || oldDf == newDf) {
    dfs[] <- findDfs()
    return()
  }
  
  ## already a df, add any more
  df <- svalue(dfs,  index=TRUE)
  dfs[] <- findDfs()
  svalue(dfs, index=TRUE) <- df

  df <- dfs[df,1]
  xCombo[] <- findVars(df, cond=is.numeric)
  fCombo[] <- findVars(df, cond=function(x) {
    length(levels(as.factor(x))) == 2
  })
}

## update every so often so that data setes are updated.
updateUI.ID <- addHandlerIdle(w, handler=updateUI)
data.ID <- addHandlerClicked(dfs, handler = updateUI)

