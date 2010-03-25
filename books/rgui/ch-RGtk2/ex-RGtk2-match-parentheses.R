###################################################
### chunk number 1: 
###################################################
gtkTextIterGetTextAtIter <- function(iter) {
  siter <- iter$copy();  eiter <- iter$copy()
  val <- siter$backwardChar()
  if(val) 
    siter$getText(eiter)                # GetText method of an iter
  else 
    return(NA)
}


###################################################
### chunk number 2: 
###################################################
## match up tokens
tokenMatch <- list("("=")",")"="(",
                   "["="]","]"="[",
                   "{"="}","}"="{")

findLeftMatch <- function(iter) {
                    
  titer <- iter$copy()
  token = titer$getTextAtIter()

  if(!token %in% c(")","}","]"))
    return(list(retval=FALSE, iter= NA))

  lt <- rt <- 0                      # count left, right tokens
  while(!is.na(char <- titer$getTextAtIter())) {
    if(char == token)
      rt <- rt+1
    else if(char == tokenMatch[[token]])
      lt <- lt+1
    if(lt == rt) {
      titer$backwardChar()              # step back 1
      return(list(retval=TRUE, iter=titer))
    } else if(lt > rt) {
      return(list(retval=FALSE, iter=NA))
    }

    titer$backwardChar()
  }
  return(list(retval=FALSE, iter=NA))   # no match
}  


###################################################
### chunk number 3: 
###################################################
tag.highlight <-
  tb$createTag(tag.name="highlight", background="yellow")


###################################################
### chunk number 4: 
###################################################
ID <- 
  gSignalConnect(tb,"changed",
                 f = function(tb, data) {
                   ## get iter at cursor
                   iter <- tb$fetIterAtMark(tb$getInsert())$iter
                   char <- iter$getTextAtIter()
                   val <- findLeftMatch(iter)
                   if(val$retval) {
                     tb$applyTagByName("highlight",val$iter,iter)
                   } else {
                     bnds <- tb$getBounds() # remove all
                     tb$removeTagByName("highlight",bnds$start, bnds$end)
                   }
                 })


