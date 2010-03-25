###################################################
### chunk number 1: 
###################################################
library(tcltk)

## helpers
quoteIt <- function(string) {           
  doQuote <- function(x) {
    xx <- strsplit(x, '"', fixe=TRUE)[[1]]
    paste(paste('"', xx, '"', sep=""), collapse='\'"\'')
  }
  if(!length(string)) return("")
  has_double_quote <- grep('"',string)
  if(!length(has_double_quote))
    return(paste('"',string,'"',sep=""))
  if (!length(grep("([$`])", string))) {
    paste("\"", gsub("([\"!\\])", "\\\\\\1", string), 
          "\"", sep = "")
  } else sapply(string, doQuote)
}


## covert a dta frame into a character based on
.toCharacter <- function(x,width,...) UseMethod(".toCharacter")
.toCharacter.default <- function(x,width,...) as.character(x)
.toCharacter.integer <- function(x,width,...) {
 if(missing(width)) width <- max(nchar(as.character(x))) + 2  
  format(x, justify="right", width=width)
}
.toCharacter.numeric <- function(x,width,...) {
  if(missing(width)) width <- max(nchar(as.character(x))) + 2
  format(x,trim=FALSE, width=width, justify="right")
}
.toCharacter.factor <- function(x,width,...) {
  if(missing(width)) width <- max(nchar(as.character(x))) + 2
  .toCharacter(as.character(x),width,...)
}
.toCharacter.logical <- function(x,width,...) {
  if(missing(width)) width <- 7
  format(as.character(x), justify="centre", width=width)
}
.toCharacter.data.frame <- function(x,width= 10, ...) {
  nms <- dimnames(x)
  df <- as.data.frame(lapply(x,function(i) .toCharacter(i, width=width)),
                      stringsAsFactors=FALSE)
  dimnames(df) <- nms
  return(df)
}

addScrollbars <- function(parent, widget) {
  xscr <- ttkscrollbar(parent, orient="horizontal",
                       command=function(...) tkxview(widget, ...))
  yscr <- ttkscrollbar(parent, orient="vertical",
                       command=function(...) tkxview(widget, ...))

  tkconfigure(widget,
              xscrollcommand=function(...) tkset(xscr,...),
              yscrollcommand=function(...) tkset(yscr,...))

  tkgrid(widget, row=0, column=0, sticky="news")
  tkgrid(yscr,row=0,column=1, sticky="ns")
  tkgrid(xscr, row=1, column=0, sticky="ew")
  tkgrid.columnconfigure(parent, 0, weight=1)
  tkgrid.rowconfigure(parent, 0, weight=1)
}


###################################################
### chunk number 2: 
###################################################
df <- getCRANmirrors()[, c(1,2,5,4)]; nms <- names(df)


###################################################
### chunk number 3: 
###################################################
w <- tktoplevel()
tkwm.title(w, "Choose a CRAN mirror")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")

f0 <- ttkframe(f); tkpack(f0, fill="x")
l <- ttklabel(f0, text="filter:"); tkpack(l, side="left")
filterVar <- tclVar("")
filterEntry <- ttkentry(f0, textvariable=filterVar)
tkpack(filterEntry, side="left")


###################################################
### chunk number 4: 
###################################################
f1 <- ttkframe(f); tkpack(f1, expand=TRUE, fill="both")
tr <- ttktreeview(f1, columns=1:ncol(df), 
                  displaycolumns = 1:(ncol(df) -1 ), # not url column
                  show = "headings",    # not "tree" which shows column "#0"
                  selectmode = "browse") # single selection
addScrollbars(f1, tr)


###################################################
### chunk number 5: 
###################################################
widths <- c(100, 75, 400, 0)            # hard code
for(i in 1:ncol(df)) {
  tcl(tr, "heading", i, text=nms[i])
  tcl(tr, "column", i, width=widths[i], stretch=TRUE, anchor="w")
}


###################################################
### chunk number 6: 
###################################################
fillTable <- function(tr, df) {
  children <- as.character(tcl(tr, "children", ""))
  for(i in children) tcl(tr, "delete", i)
  shade <- c("gray","none")
  for(i in seq_len(nrow(df))) 
    tcl(tr, "insert", "", "end", tag=shade[1 + i %% 2],text="",  values=unlist(df[i,]))
  tktag.configure(tr, "gray", background="gray95")
}


###################################################
### chunk number 7: 
###################################################
fillTable(tr, df)


###################################################
### chunk number 8: 
###################################################
curInd <- 1:nrow(df)
tkbind(filterEntry, "<KeyRelease>", function(W, K) {
  val <- tclvalue(tkget(W))
  possVals <- apply(df,1, function(...) paste(..., collapse=" "))
  ind<- grep(val, possVals)
  if(length(ind) == 0) ind <- 1:nrow(df)
  curInd <<- ind                        # store for later
  fillTable(tr, df[ind,])
})


###################################################
### chunk number 9: 
###################################################
tkbind(tr, "<Double-Button-1>", function(W, x, y) {
  sel <- as.character(tcl(W, "identify", "row", x, y))
  ind <- as.numeric(tcl(W, "index", sel))
  URL <- (df[curInd,])[ind + 1, "URL"]  # index is 0-based
  print(URL)
})


