library(tcltk)

fonts <- list()
fontFamilies <- as.character(tkfont.families())
fontFamilies <- fontFamilies[grep("^[[:alpha:]]", fontFamilies)]

fontSizes <- c(8, 10, 12, 14, 16, 18, 20, 24)

## basic GUI
w <- tktoplevel()
tkwm.title(w, "Font browser")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")

f1 <- ttkframe(f, padding=2)
tkpack(f1, fill="y")

t <- tktext(f)
tkpack(t, expand=TRUE, fill="both")
tkinsert(t, "end","The quick brown fox jumped over the lazy dog.")

## combo boxes for selecting font
## bad choice -- too many fonts
tkpack(ttklabel(f1, text="Family"), side="left")
selectedFamily <- tclVar(fontFamilies[1])
familyCombo <- ttkcombobox(f1,
                        values = fontFamilies,
                        textvariable = selectedFamily,
                        state="readonly",
                        justify="left")
tkpack(familyCombo, padx=c(1,5), side="left")

tkpack(ttklabel(f1, text="Size:"), side="left")
selectedSize <- tclVar(fontSizes[4])
sizeCombo <- ttkcombobox(f1,
                         values = fontSizes,
                         textvariable = selectedSize,
                         state="readonly",
                         justify="left")
tkpack(sizeCombo, padx=c(1,5), side="left")

tkpack(ttklabel(f1, text="Bold:"), side="left")
selectedBold <- tclVar(FALSE)
boldCheck <- ttkcheckbutton(f1,
                            textvariable=selectedBold)
tkpack(boldCheck, padx=c(1,5), side="left")



updateUI <- function() {
  ## change font in text area
  out <- sapply(list(selectedFamily, selectedSize, selectedBold), tclvalue)
  names(out) <- c("family", "size", "weight")
  out[1] <- paste("{",out[1],"}", sep="")
  if(!as.logical(as.numeric(as.character(out[[3]]))))
    out <- out[1:2]

  tktag.add(t,"all","0.0","end")
  tktag.configure(t, "all", font=paste(out, collapse=" "))
}


w <- tktoplevel()
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")

for(i in 1:10) {
  fName <- paste("tmp",i,sep="")
  try(tkfont.create(fName, family=fontFamilies[i], size=14))
  l <- ttklabel(f, text=fontFamilies[i], font=fName)
  tkpack(l)
}

