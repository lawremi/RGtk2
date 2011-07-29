###################################################
### chunk number 1: 
###################################################
#line 5 "ex-RGtk2-dialog-layout.Rnw"
## layout a basic dialog -- center align
library(RGtk2)


###################################################
### chunk number 2: gtk-container-table-construct
###################################################
#line 18 "ex-RGtk2-dialog-layout.Rnw"
tbl <- gtkTable(rows=3, columns=2, homogeneous=FALSE)


###################################################
### chunk number 3: 
###################################################
#line 27 "ex-RGtk2-dialog-layout.Rnw"
sizeLabel <- gtkLabel("Sample size:")
sizeCombo <- gtkComboBoxNewText()
sapply(c(5, 10, 15, 30), sizeCombo$appendText)
##
diagLabel <- gtkLabel("Diagnostic:")
diagRadios <- gtkVBox()
rb <- list()
rb$t <- gtkRadioButton(label="t-statistic")
rb$mean <- gtkRadioButton(rb, label="mean")
rb$median <- gtkRadioButton(rb, label="median")
sapply(rb, diagRadios$packStart)
##
submitBox <- gtkVBox()
submitBox$packEnd(gtkButton("Run simulation"), expand = FALSE)


###################################################
### chunk number 4: gtk-container-layout-align
###################################################
#line 46 "ex-RGtk2-dialog-layout.Rnw"
sizeLabel['xalign'] <- 1
diagLabel['xalign'] <- 1; diagLabel['yalign'] <- 0
diagAlign <- gtkAlignment(xalign = 0)
diagAlign$add(diagRadios)


###################################################
### chunk number 5: 
###################################################
#line 78 "ex-RGtk2-dialog-layout.Rnw"
tbl$attach(sizeLabel, left.attach=0,1, top.attach=0,1, 
           xoptions = c("expand", "fill"), yoptions="")
tbl$attach(sizeCombo, left.attach=1,2, top.attach=0,1, 
           xoptions="fill", yoptions="")
##
tbl$attach(diagLabel, left.attach=0,1, top.attach=1,2, 
           xoptions = c("expand", "fill"), 
           yoptions=c("expand", "fill"))
##
tbl$attach(diagAlign, left.attach=1,2, top.attach=1,2, 
           xoptions=c("expand", "fill"), yoptions = "")
##
tbl$attach(submitBox, left.attach=1,2, top.attach=2,3, 
           xoptions="", yoptions=c("expand", "fill"))


###################################################
### chunk number 6: gtk-container-table-spacing
###################################################
#line 103 "ex-RGtk2-dialog-layout.Rnw"
tbl$setColSpacing(0, 5)


###################################################
### chunk number 7: 
###################################################
#line 108 "ex-RGtk2-dialog-layout.Rnw"
w <- gtkWindow(show=FALSE)
w['border-width'] <- 14
w$setTitle("GtkTable Example")
w$add(tbl)


###################################################
### chunk number 8: 
###################################################
#line 115 "ex-RGtk2-dialog-layout.Rnw"
w$show()                             


