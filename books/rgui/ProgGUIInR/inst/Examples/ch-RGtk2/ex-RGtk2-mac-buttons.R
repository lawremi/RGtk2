###################################################
### chunk number 1: MacOSXstyleButton
###################################################
#line 12 "ex-RGtk2-mac-buttons.Rnw"
## not shown
w <- gtkWindow(show=FALSE)
w$setTitle("MAC OS X style buttons")
g <- gtkHButtonBox()
fg <- gtkHBox()
fg$setSizeRequest(width=800, height=-1)
w$add(fg)

hbox <- gtkHBox()
fg$packStart(hbox, padding=15)              # for size grip


###################################################
### chunk number 2: StockButtons
###################################################
#line 34 "ex-RGtk2-mac-buttons.Rnw"
cancel <- gtkButton(stock.id="gtk-cancel")
ok <- gtkButton(stock.id="gtk-ok")
delete <- gtkButton(stock.id="gtk-delete")


###################################################
### chunk number 3: macButtonPack
###################################################
#line 42 "ex-RGtk2-mac-buttons.Rnw"
hbox$packEnd(ok, padding=0)
hbox$packEnd(cancel, padding=12)
hbox$packEnd(delete, padding=12)
hbox$packEnd(gtkLabel(""), expand=TRUE, fill=TRUE) # a spring


###################################################
### chunk number 4: 
###################################################
#line 58 "ex-RGtk2-mac-buttons.Rnw"
ok$grabFocus()


###################################################
### chunk number 5: 
###################################################
#line 62 "ex-RGtk2-mac-buttons.Rnw"
## not shown
w$showAll()


###################################################
### chunk number 6: gtkHButtonBoxExample
###################################################
#line 66 "ex-RGtk2-mac-buttons.Rnw"
## not shown
## Had we only wanted to use a button box
w <- gtkWindow()
bb <- gtkHButtonBox()
w$add(bb)

bb$add(gtkButton(stock.id="gtk-delete"))
bb$add(gtkButton(stock.id="gtk-cancel"))
bb$add(gtkButton(stock.id="gtk-ok"))


