library(tcltk)
## draw icon
require(grid)
l <- list(
          c(.1, .9, .8),
          c(.1, .8, .3),
          c(.1, .6, .1)
          )

f <- "/tmp/test.png"
for(i in 1:3) {
  png(f,width=16, height=16)
  grid.newpage()
  x <- l[[i]][1]; y <- l[[i]][2]; height= l[[i]][3]
  out <- rectGrob(x, y, height=height, width=.9,
                  vjust = 1, gp = gpar(fill = "grey20", col = NA))
  grid.draw(out)
  dev.off()

  system("convert /tmp/test.png /tmp/test.gif")
  tkimage.create("photo", paste("::tcl::icon",i,sep=""), file="/tmp/test.gif")
  w <- tktoplevel()
  b <- ttkbutton(w, image=paste("::tcl::icon",i, sep=""), text="label", compound="left")
  tkpack(b)
}
