###################################################
### chunk number 1: 
###################################################
#line 5 "ex-RGtk2-dialog-layout.Rnw"
## layout a basic dialog -- center align
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
#line 19 "ex-RGtk2-dialog-layout.Rnw"
w <- gtkWindow(show=FALSE)
w['border-width'] <- 14
w$setTitle("example of gtkTable and attaching")
tbl <- gtkTable(rows=4, columns=2, homogeneous=FALSE)
w$add(tbl)


###################################################
### chunk number 3: 
###################################################
#line 28 "ex-RGtk2-dialog-layout.Rnw"
l1 <- gtkLabel("Sample size")
w1 <- gtkComboBoxNewText()
sapply(c(5, 10, 15, 30), gtkComboBoxAppendText, object=w1)
#
l2 <- gtkLabel("Show diagnostic ")
w2 <- gtkVBox()
rb <- list()
rb[["t"]] <- gtkRadioButton(label="t-statistic")
for(i in c("mean","median")) rb[[i]] <- gtkRadioButton(rb, label=i)
sapply(rb, gtkBoxPackStart, object=w2)
#
w3 <- gtkButton("Run simulation")


###################################################
### chunk number 4: 
###################################################
#line 50 "ex-RGtk2-dialog-layout.Rnw"
tbl$attach(l1, left.attach=0,1, top.attach=0,1, yoptions="fill")
l1["xalign"] <- 1; l1["xpad"] <- 5
tbl$attach(w1, left.attach=1,2, top.attach=0,1, xoptions="fill", yoptions="fill")


###################################################
### chunk number 5: 
###################################################
#line 59 "ex-RGtk2-dialog-layout.Rnw"
tbl$attach(l2, left.attach=0,1, top.attach=1,2, yoptions="fill")
l2["xalign"] <- 1; l2['yalign'] <- 0; l2["xpad"] <- 4
tbl$attach(w2, left.attach=1,2, top.attach=1,2, xoptions=c("expand", "fill"))


###################################################
### chunk number 6: 
###################################################
#line 66 "ex-RGtk2-dialog-layout.Rnw"
tbl$attach(gtkHSeparator(),left.attach=0,2, top.attach=2,3, ypadding=10, yoptions="fill")
tbl$attach(w3, left.attach=1,2, top.attach=3,4, xoptions="fill", yoptions="fill")


###################################################
### chunk number 7: 
###################################################
#line 71 "ex-RGtk2-dialog-layout.Rnw"
w$show()                             


