## how to make a dataframe editor for R using RGtk2

source("dataEditorAPI.R")
source("makeViewColumns.R")
source("keyMotions.R")

## test it
d <- data.frame(stock=I(c("gtk-ok", "gtk-close")),
                integer = 1:2,
                numeric = rnorm(2),
                oddnumeric = c(NA, NaN),
                logical = c(T,F),
                factor = c("level1", "level2"),
                character = I(c("this is \na new line", "and this too"))
                )
class(d$stock) <- c("stockid", class(d$stock))

data(Aids2, package="MASS")
#d <- Aids2

#d <- data.frame(a=1:3, b=I(letters[1:3]), c= LETTERS[1:3])
model <- rGtk2ModelWithViews(d)

view <- model$addNewView()
view$getSelection()$setMode("multiple")
view$setRubberBanding(TRUE)


w <- gtkWindow(show=FALSE)
w$setSizeRequest(500,400)
w$add(sw <- gtkScrolledWindow())
sw$add(view)

w$show()
