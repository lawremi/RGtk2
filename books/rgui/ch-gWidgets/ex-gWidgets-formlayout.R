###################################################
### chunk number 1: 
###################################################
hypotheses <- list(type = "fieldset",
                   label = "Hypotheses",
                   columns = 2, 
                   children = list(
                     list(type = "gedit",                            
                          name = "mu", label = "Ho: mu=",
                          text = "0", coerce.with=as.numeric),
                     
                     list(type = "gcombobox",
                          name = "alternative", label = "HA: ",
                          items = c("two.sided","less","greater")
                          )))


###################################################
### chunk number 2: 
###################################################
variables <- list(type="fieldset",
                     columns = 2,
                     label = "Variable(s)",
                     label.pos = "top",
                     label.font = c(weight="bold"),
                     children = list(
                       list(type = "gedit",
                            name = "x", label = "x",
                            text = ""),
                       list(type = "gedit",
                            name = "y", label = "y",
                            text = "",
                            depends.on = "x",
                            depends.FUN = function(value) nchar(value) > 0,
                            depends.signal = "addHandlerChanged"
                            )))


###################################################
### chunk number 3: 
###################################################
two.sample <-  list(type = "fieldset",
                     label = "two sample test",
                     columns = 2,
                     depends.on = "y",
                     depends.FUN = function(value) nchar(value) > 0,
                     depends.signal = "addHandlerChanged",                     
                     children = list(
                       list(type = "gcombobox",
                            name = "paired", label = "paired samples",
                            items = c(FALSE, TRUE)
                            ),
                       list(type = "gcombobox",
                            name = "var.equal", label = "assume equal var",
                            items = c(FALSE, TRUE)
                            )))


###################################################
### chunk number 4: 
###################################################
conf.level <- list(type = "fieldset",
                   columns = 1,
                   children = list(
                     list(type = "gslider",
                          name = "conf.level", label = "confidence level",
                          from=0.5, to=1.0, by=.01, value=0.95
                     )))


###################################################
### chunk number 5: 
###################################################
tTest <- list(type = "ggroup",
              horizontal = FALSE,
              children = list(
                variables,
                hypotheses,
                two.sample,
                conf.level
                ))


###################################################
### chunk number 6: 
###################################################
w <- gwindow("t.test example with gformlayout")
g <- ggroup(horizontal = FALSE, cont = w)
fl <- gformlayout(tTest, cont = g, expand=TRUE)
bg <- ggroup(cont = g)
addSpring(bg)
b <- gbutton("run t.test", cont = bg)


###################################################
### chunk number 7: 
###################################################
addHandlerChanged(b, function(h,...) {
  out <- svalue(fl)
  out$x <- svalue(out$x) # turn text string into numbers via get()
  if(out$y == "") {
    out$y <- out$paired <- NULL 
  } else {
   out$y <- svalue(out$y)
  }
  print(do.call("t.test",out))
})


