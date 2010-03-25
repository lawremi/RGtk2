## labels
library(tcltk)

w <- tktoplevel()
f <- ttkframe(w)
tkpack(f)
tkconfigure(f,padding=c(20,10))

var <- tclVar("label text")

## plain -- textvariable
l <- ttklabel(f, textvariable=var); tkpack(l)

## textvariables
print(tclvalue(var))
tclvalue(var) <- "new label text" ## change text variable via tclvalue()<-
print(tclvalue(var))
print(as.character(var))       # as.character gives ID

## using text attribute
l <- ttklabel(f, text = "label text"); tkpack(l)

print(tkcget(l, "-text"))
tkconfigure(l, text="new text")
print(tkcget(l, "-text"))



## foreground color
l <- ttklabel(f, textvariable=var, foreground="red"); tkpack(l)
## background colro
l <- ttklabel(f, textvariable=var, background="red"); tkpack(l) ## nada


## configuring after creation
tkconfigure(l,foreground="blue")



## relief
reliefs <- c("flat","raised","sunken","solid","ridge","groove")
for(i in reliefs) {
  l <- ttklabel(f, text=i, relief=i); tkpack(l) ## nada
}


## special fonts
tkfont.create("ourFont", family="Helvetica", size=12, weight="bold")
l <- ttklabel(f, text="ourFont", font = "ourFont"); tkpack(l)

## list all fonts with tkfont.families -- returns a tcl list, not converted into R
tkfont.create("funnyFont", family="Calibri", size=12)
l <- ttklabel(f, text="funnyFont", font = "funnyFont"); tkpack(l)

## justify -- not working?
for(i in c("left","right","center")) {
  l <- ttklabel(f, text=i, justify=i); tkpack(l)
}

## new line via \n
x <- "a\nnewline"
l <- ttklabel(f, text=x); tkpack(l) 

## wrapping
x <- "The quick brown fox jumped over the lazy dog"
l <- ttklabel(f, text=x, wraplength=20*6); tkpack(l) ## size in pixels here -- not characters



## labels with images
## http://www.demailly.com/tcl/about/logos.html
tkimage.create("photo", "tclLogo", file = "tclp.gif")

## use compound to place. Default is "iamge" if image present. left means *image* on left
for(i in c("text","image","center", "top","left","bottom","right")) {
  l <- ttklabel(f, text=i, image="tclLogo", compound=i); tkpack(l)
}


## Styles
## list all styles
.Tcl("ttk::style theme names")

## set the style
.Tcl("ttk::style theme use aqua")

## loop
for(i in as.character(.Tcl("ttk::style theme names"))) {
  .Tcl(paste("ttk::style use",i,sep=" "))
}
