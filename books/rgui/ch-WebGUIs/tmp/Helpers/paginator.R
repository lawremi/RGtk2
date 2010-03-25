## paginator
paginator <- function(objects, pageSize=20, orphanMin=5 + floor(pageSize/4)) {
  n <- length(objects)
  if(n == 1) n <- objects               # objects can be vector or number
  sq <- seq(0,n, by=pageSize)
  if( n %% pageSize < orphanMin)
    sq[length(sq)] <- n
  else
    sq <- c(sq,n)
  l <- list(objects=objects,
            seq = sq,
            n=n)
  class(l) <- c("Paginator")
  l
}

## how many objects
p.count <- function(pg) pg$n
p.nopages <- function(pg) length(pg$seq) - 1
## return indices of ith page
p.page <- function(pg, i) {
  i <- as.integer(i)
  if(1 <= i && i <= pg$n) 
    return(seq(pg$seq[i]+1, pg$seq[i+1]))
  else
    return(NA)
}
p.hasNext <- function(pg, i) as.integer(i) < p.nopages(pg)
p.hasPrevious <- function(pg, i) as.integer(i) > 1
p.hasPage <- function(pg, i) {
  i <- as.integer(i)
  1 <= i && i <= p.nopages(pg)
}


        
  
