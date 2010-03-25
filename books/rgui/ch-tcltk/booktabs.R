## function to use booktabs format for tables
## colTypes -- l r c p ... for latex

## eg. cat(booktabs(df, colTypes=c("l","l","p{.65\\textwidth}")))
##     cat(booktabs(df, caption="Plot command"))
booktabs <- function(x,caption="",subtop="", label="",
                     colTypes=NULL, ...) UseMethod("booktabs")

booktabs.matrix <- function(x,caption="",subtop="",label="",colTypes=NULL,...) {
  dnms <- dimnames(x)
  hasDimnames <- ifelse(!is.null(names(dnms)), TRUE, FALSE)

  hasRowNames <- TRUE
  numRowNames <- try(as.numeric(dnms[[1]]), silent=TRUE)
  if(!inherits(numRowNames, "try-error") &&
     all( numRowNames == 1:nrow(x))) {
    ## skip numbers
    hasRowNames <- FALSE
  }

  ## make character matrix using format
  m <- matrix(rep("", (nrow(x) + hasRowNames) * ncol(x)), nrow= nrow(x))

  ## colTypes -- vector of 
  if(is.null(colTypes)) {
    colTypes <- character(ncol(x))
    for(i in 1:ncol(x)) {
      colTypes[i] <- switch(class(x[,i])[1],
                            "numeric" = "r",
                            "logical" = "c",
                            "l")
    }
  }
  
  ## fill
  if(hasRowNames) {
    if(hasDimnames) {
      m[,1] <- paste("\\quad ", dnms[[1]], sep="")
    } else {
      m[,1] <- dnms[[1]]
    }
  }
  
  ## fill in column by column
  for(j in 1:ncol(x))
    m[, j + hasRowNames] <- switch(class(x[,j])[1],
                                   "numeric"=format(x[,j], digits=4),
                                   as.character(x[,j]))

  ## write out
  out <- paste("\\begin{table}",
               "\\centering",
               if(label != "") {
                 paste("\\label{", label, "}", sep="")
               },
               if(caption != "") {
                 paste("\\caption{", caption, "}", sep="")
               },
               if(subtop != "") {
                 paste("\\subtop{", subtop, "}", sep="")
               },
               paste("\\begin{tabular}{",
                     "@{}",rep("l@{\\quad}",hasRowNames),
                     paste(colTypes,collapse=""),
                     "@{}}",
                     sep=""),
               "\\toprule",
               if(!is.null(names(dnms)[2])) 
                 paste("\\multicolumn{", ncol(x) + hasRowNames, "}{c}{", names(dnms)[2], "}\\\\", sep=""),
               ## header row
               if(hasRowNames)  {
                 paste(paste(c(names(dnms)[1], dnms[[2]]), collapse="&"), "\\\\", sep="")
               } else {
                 paste(paste(dnms[[2]], collapse="&"), "\\\\", sep="")
               },
               "\\midrule",
               paste(apply(m, 1, function(i)
                           paste(i, collapse="&")), collapse="\\\\"),
               "\\\\ \\bottomrule",
               "\\end{tabular}",
               "\\end{table}",
               "",
               sep="\n")

  out
}
booktabs.data.frame <- booktabs.matrix
  

booktabs.table <- function(x, caption="",subtop="",label="",
                           colTypes=NULL, ...) {
  y <- x[,]
  dimnames(y) <- dimnames(x)
  booktabs(y, caption, subtop, label, ...)
}
