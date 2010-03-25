## width is different for different widgets

## entry Database Class: Width
##    Specifies an integer value indicating the desired width of the entry window, in average-size characters of the widget's font.

w <- tktoplevel()
e <- ttkentry(w); tkpack(e)
tkconfigure(e, "width"=25)
tkinsert(e,"end",paste(1:25 %% 10, collapse=""))


## text Command-Line Name: -width Specifies the desired width for the
##     window in units of characters in the font given by the -font
##     option. If the font does not have a uniform width then the
##     width of the character “0” is used in translating from
##     character units to screen units.


## so 80x24 would be 80x24
w <- tktoplevel()
t <- tktext(w, width=80, height=24)
tkpack(t)
for(i in 1:23)
  tkinsert(t,"end",paste(rep(0:9,8), collapse=""))
tkinsert(t,"end","one more")


## label
## Command-Line Name: -width
## Database Name: width
## Database Class: Width
##     If greater than zero, specifies how much space, in character widths, to allocate for the text label. If less than zero, specifies a minimum width. If zero or unspecified, the natural width of the text label is use
## not quite right
w <- tktoplevel()
l <- ttklabel(w, text=paste(rep(0:9,10), collapse=""))
tkpack(l)
tkconfigure(l, width=100)


## tree
## width configured per column
#-width w
#    The width of the column in pixels. Default is something reasonable, probably 200 or so.

m <- rbind(c("a","character","matrix"),
           c("how","big","am i"))
w <- tktoplevel()
tclServiceMode(FALSE)
t <- ttktreeview(w, columns=1:3,        # 3 columns (not #0
                 displaycolumns=1:3,
                 show="headings",       # not tree which shows "#0"
                 height=20              # no. rows
                 )
tkpack(t)

## get character size from TkTextFont
## average width
averageFontWidth <- as.numeric(tclvalue(tcl("font","measure","TkTextFont",paste(c(0:9,letters),collapse=""))))/36
fontHeight <- as.numeric(tclvalue(tcl("font", "metrics", "TkTextFont","-linespace")))
 

for(j in 1:ncol(m)) 
  tcl(t,"column",j,width=as.integer(fontSizes[j]))

for(i in 1:nrow(m))
  tcl(t,"insert","","end", text="", values=m[i,])




tclServiceMode(TRUE)
