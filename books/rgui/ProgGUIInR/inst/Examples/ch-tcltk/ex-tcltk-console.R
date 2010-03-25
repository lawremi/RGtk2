library(tcltk)

tt <- tktoplevel()

tkRterm <- tktext(tt)

## scrollbars

## globals
hist <- list()
nhist <- 0
phist <- 0
saved <- list()

tkbind(tkRterm,"<Return>", function(W) {
  tcl(W, "see","end")
  tcl(W, "insert","end","\n")
  tcl(W, "mark","set","insert-mark", "'end - 1 chars'")
  tcl(W, "mark","gravity", "insert-mark", "right")
  .Tcl('set terminput [W get process-mark "end -1 chars"]')
})


tkbind(tkRterm, "<Up>", function(W) {
  if(length(phist) == 0) return()
  if(length(phist) == nhist) {
    saved <<- tcl(W,"get", "process-mark",'"end - 1 chars"')
  }
  tcl(W, "delete","process=mark", "end -1 chars")
  phist <<- phist - 1
  tcl(W, "insert", "process-mark", hist[[phist]])
})

tkbind(tkRterm,"<Down>", function(W) {
  if(phist >= nhist) return()
  tcl(W, "delete", "process-mark", "'end - 1 chars'")
  phist <<- phist + 1
  if(phist < nhist) 
    tcl(W, "insert","process-mark", hist[[phist]])
  else
    tcl(W, "insert", "process-mark", saved)
  return()
})

Rc_read <- function(W) {
  prompt <- options("prompt")
  
  tcl(W,"mark", "set", "insert-mark", "'end - 1 chars'")
  tcl(W,"mark", "gravity", "insert-mark", "left")
  tcl(W, "insert", "insert-mark", prompt)
  tcl(W, "mark", "gravity", "insert-mark", "right")
  tcl(W, "mark", "set",  "process-mark", "'end - 1 chars'")
  tcl(W, "mark", "gravity", "process-mark",  "left")
  see end
  set phist $nhist
    tkwait variable terminput
    .tk-R.term mark set insert end
    if ($addtohistory) then {
	lappend hist [string trimright $terminput]
	incr nhist
    }
    return $terminput
}

proc Rc_write { buf } {
    .tk-R.term insert insert-mark $buf
    .tk-R.term see end
    #.tk-R.term mark set insert end
    #update
}
