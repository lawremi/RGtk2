###################################################
### chunk number 1: 
###################################################
## layout a basic dialog -- center align
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
w <- gtkWindow(show=FALSE)
w$setTitle("example of gtkTable and attaching")
tbl <- gtkTable(rows=4, columns=2, homogeneous=FALSE)
w$add(tbl)


###################################################
### chunk number 3: 
###################################################
l1 <- gtkLabel("Sample size")
w1 <- gtkComboBoxNewText()
QT <- sapply(c(5, 10, 15, 30), function(i) w1$appendText(i))

l2 <- gtkLabel("Show diagnostic ")
w2 <- gtkVBox()
rb <- list()
rb[["t"]] <- gtkRadioButton(label="t-statistic")
for(i in c("mean","median")) rb[[i]] <- gtkRadioButton(rb, label=i)
QT <- sapply(rb, function(i) w2$packStart(i))

w3 <- gtkButton("Run simulation")


###################################################
### chunk number 4: 
###################################################
tbl$attach(l1, left.attach=0,1, top.attach=0,1, yoptions="fill")
l1["xalign"] <- 1; l1["xpad"] <- 5
tbl$attach(w1, left.attach=1,2, top.attach=0,1, xoptions="fill", yoptions="fill")


###################################################
### chunk number 5: 
###################################################
tbl$attach(l2, left.attach=0,1, top.attach=1,2, yoptions="fill")
l2["xalign"] <- 1; l2['yalign'] <- 0; l2["xpad"] <- 4
tbl$attach(w2, left.attach=1,2, top.attach=1,2, xoptions=c("expand", "fill"))


###################################################
### chunk number 6: 
###################################################
tbl$attach(gtkHSeparator(),left.attach=0,2, top.attach=2,3, ypadding=10, yoptions="fill")
tbl$attach(w3, left.attach=1,2, top.attach=3,4, xoptions="fill", yoptions="fill")


###################################################
### chunk number 7: 
###################################################
w$showAll()                             # propogate to combo


