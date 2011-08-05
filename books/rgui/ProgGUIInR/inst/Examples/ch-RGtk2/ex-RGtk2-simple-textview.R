###################################################
### chunk number 1: textViewBasics
###################################################
#line 4 "ex-RGtk2-simple-textview.Rnw"
tv <- gtkTextView()
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
sw$add(tv)

w <- gtkWindow(); w$add(sw)

tv['editable'] <- TRUE                  
tv['cursor-visible'] <- TRUE            
tv['wrap-mode'] <- "word"             # GtkWrapMode value
tv['justification'] <- "left"         # GtkJustification value
tv['left-margin'] <- 20               # 0 is default

tb <- tv$getBuffer()                    
tb$setText("the quick brown fox jumped over the lazy dog")

font.str <- "Serif, monospace bold italic 8"
font <- pangoFontDescriptionFromString(font.str)
tv$modifyFont(font)


