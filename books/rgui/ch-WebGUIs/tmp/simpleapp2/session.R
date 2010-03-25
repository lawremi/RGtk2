## session
require(filehashSQLite)
require(digest)

sessionDbFile = "test.db"
sessionSecretKey = "abcdefg"
sessionTimeout <- 10000 # or NULL



## init
## close
## dbDisconnect(db)
## API

## add in error handling!
createDb <- function(file=sessionDbFile) {
  out <- try(dbCreate(sessionDbFile, type="SQLite"), silent=TRUE)
  if(inherits(out,"try-error"))
    cat(out)
  return(TRUE)
}
initDb <- function(file=sessionDbFile, type=sessionDbType) {
  ctr <- 1
  db <- try(dbInit(file, type=type), silent=TRUE)
  if(ctr < sessionMaxTries && inherits(db, "try-error")) {
    Sys.sleep(0.1)
    ctr <- ctr + 1
    db <- try(dbInit(file, type=type), silent=TRUE)
  }
  return(db) ## warts and all if failed
}
disconnectDb <- function(db) {
  dbDisconnect(db)
}

## session API
validKey <- function(db, key) {
  val <- dbExists(db, key)
  if(!val)
    return(list(retval=FALSE, reason="no such key"))
  ## check that not timed out
  e <- db$key
  if(exists(".timeOut", e)) {
    if(e[[".timeOut"]] < Sys.time())
      return(list(retval=FALSE, reason="Session has expired"))
  }
  return(list(retval=TRUE))
}
             
getSession <- function(db, key) {
  if(validKey(db,key)$retval)
    db$key
  else
    return(new.env())
}
saveSession <- function(db, key, e) {
  db$key <- e
}

## shortcut
evalInSession <- function(key, cmds) {
  db <- initDb()
  e <- getSession(db, key)
  eval(cmds, envir=e)
  if(!is.null(sessionTimeout))
    e$.timeOut <- Sys.time() + sesssionTimeout
  setSession(db, key, e)
  disconnect(db)
}

## some cleanups
clearConnections <- function() {
  odbc <- dbDriver("SQLite")
  sapply(dbListConnections(odbc), dbDisconnect)
}

makeSessionID <- function() {
  txt <- as.character(Sys.time())
  key <- paste(sessionSecretKey, txt, sep="")
  ID <- digest(key, algo="md5")
  return(ID)
}
