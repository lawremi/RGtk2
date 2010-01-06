# code snippets from the paper
library(RGtk2)

# GTK+ widgets in RGtk2

# create initial window
window <- gtkWindow("toplevel", show = FALSE)

# create a button and add to container
button <- gtkButton("Hello World")
window$add(button)
window$setDefaultSize(200,200)

# get the 'visible' property from 'window'
window["visible"]

# set the 'visible' property
window["visible"] <- TRUE # or
window$show()             # the conventional way

# setting multiple properties at once
image <- gdkPixbuf(filename=imagefile("rgtk-logo.gif"))[[1]]
window$set(icon = image, title = "Hello World 1.0")

# access a field
window[["allocation"]]

# connect a function to the button 'clicked' signal
gSignalConnect(button, "clicked", 
  function(widget) print("Hello world!"))
  
# Accessing Documentation

help(GtkWindow) # class
help(gtkContainerAdd) # method

# Widget Layout

# homogeneous case
box <- gtkHBox(TRUE, 5)

# create some buttons and add to the box
button_a <- gtkButton("Button A")
button_b <- gtkButton("Button B")
box$packStart(button_a, fill = FALSE)
box$packStart(button_b, fill = FALSE)

# heterogeneous
box <- gtkHBox(FALSE, 5)
button_a <- gtkButton("Button A")
button_b <- gtkButton("Button B")
box$packStart(button_a, expand = TRUE, fill = FALSE)
box$packStart(button_b, expand = FALSE, fill = FALSE)

# A Dialog with the User

# creating and showing the dialog
main_application_window <- NULL # for purposes of this example
dialog <- gtkMessageDialog(main_application_window, "destroy-with-parent", 
  "question", "yes-no", "Do you want to upgrade RGtk2?")

# running the dialog (and destroying when finished)
if (dialog$run() == GtkResponseType["yes"])
 install.packages("RGtk2")
dialog$destroy()

# Giving the User More Options

# check button
dialog <- gtkMessageDialog(main_application_window, "destroy-with-parent", 
  "question", "yes-no", "Do you want to upgrade RGtk2?")
check <- gtkCheckButton("Upgrade GTK+ system library")
dialog[["vbox"]]$add(check)

# radio buttons
dialog <- gtkMessageDialog(main_application_window, "destroy-with-parent", 
  "question", "yes-no", "Do you want to upgrade RGtk2?")
choices <- c("None", "Stable version", "Unstable version")
radio_buttons <- NULL
vbox <- gtkVBox(FALSE, 0)
for (choice in choices) {
  button <- gtkRadioButton(radio_buttons, choice)
  radio_buttons <- c(radio_buttons, button)
  vbox$add(button)
}
# place radio buttons inside their own frame
frame <- gtkFrame("Install GTK+ system library")
frame$add(vbox)
dialog[["vbox"]]$add(frame)

# combobox
dialog <- gtkMessageDialog(main_application_window, "destroy-with-parent", 
  "question", "yes-no", "Do you want to upgrade RGtk2?")
choices <- c("None", "GTK+ 2.8.x", "GTK+ 2.10.x", "GTK+ 2.12.x")
combo <- gtkComboBoxNewText()
combo$show()
for (choice in choices) {
  combo$appendText(choice)
}
combo$setActive(0)
frame <- gtkFrame("Install GTK+ system library")
frame$add(combo)
dialog[["vbox"]]$add(frame)

# The CRAN Mirrors Dialog

# create the dialog
dialog <- gtkMessageDialog(NULL, 0, "question", "ok-cancel", "Choose a mirror:", show = FALSE)

# read mirrors and create list view
mirrors <- read.csv(file.path(R.home("doc"), "CRAN_mirrors.csv"), as.is = TRUE)
model <- rGtkDataFrame(mirrors)
view <- gtkTreeView(model)
view$getSelection()$setMode("browse")

# add a column for showing the mirror names
column <- gtkTreeViewColumn("Mirror", gtkCellRendererText(), text = 0)
view$appendColumn(column)

# embed in scrolled window
scrolled_window <- gtkScrolledWindow()
scrolled_window$setSizeRequest(-1, 150)
scrolled_window$add(view)

# run the dialog and handle response
dialog[["vbox"]]$add(scrolled_window)
if (dialog$run() == GtkResponseType["ok"]) {
  selection <- view$getSelection()
  sel_paths <- selection$getSelectedRows()$retval
  sel_row <- sel_paths[[1]]$getIndices()[[1]]
  options(repos = mirrors[sel_row, "URL"])
}
dialog$destroy()

# Embedded R Graphics

# generate some microarray data
n <- 5000
backbone <- rnorm(n)
ma_data <- cbind(backbone+c(rnorm(3*(n/4),sd=0.1), rt(n/4, 80)), 
  backbone+c(rnorm(3*(n/4),,0.1), rt(n/4, 80)))
ma_data <- apply(ma_data, 2, function(col) col - min(col))

# create the widgets
win <- gtkWindow(show = FALSE)
graphics <- gtkDrawingArea()
slider <- gtkHScale(min=0.1, max=1.00, step=0.1)

# adjust alpha via slider
scale_cb <- function(range) {
  par(pty = "s")
  plot(ma_data[,1], ma_data[,2], col = rgb(0, 0, 0, range$getValue()),
    xlab = "Replicate 1", ylab = "Replicate 2", 
    main = "Mock expression data", pch = 19)
}
gSignalConnect(slider, "value-changed", scale_cb)

# add widgets to containers
vbox <- gtkVBox()
vbox$packStart(graphics, TRUE, TRUE, 0)
vbox$packStart(slider, FALSE, FALSE, 0)
win$add(vbox)

# show the GUI
win$setDefaultSize(400,400)
win$showAll()

# prepare the graphics device
require(cairoDevice)
asCairoDevice(graphics)

# update the graphic
slider$setValue(0.7)

# A Sample Application

# create the main window
main_window <- gtkWindow(show = FALSE)
main_window["title"] <- "RGtk2 Spreadsheet"
main_window$setDefaultSize(600,600)

# file management callbacks
open_cb <- function(widget, window)  
{
  dialog <- gtkFileChooserDialog("Choose a CSV file", window, "open",
                                 "gtk-cancel", GtkResponseType["cancel"],
                                 "gtk-open", GtkResponseType["accept"])
  if (dialog$run() == GtkResponseType["accept"]) {
    df <- read.csv(dialog$getFilename())
    load_spreadsheet(df, basename(dialog$getFilename()))
  }
  dialog$destroy()
}
save_cb <- function(widget, window) {
  dialog <- gtkFileChooserDialog("Enter a name for the file", window, "save",
                                 "gtk-cancel", GtkResponseType["cancel"],
                                 "gtk-save", GtkResponseType["accept"])
  if (dialog$run() == GtkResponseType["accept"])
    save_file(dialog$getFilename()) # not implemented
  dialog$destroy()
}
quit_cb <- function(widget, window) {
  window$destroy() # quick and dirty
}

# define user actions
actions <- list(list("FileMenu", NULL, "_File"), 
                list("Open", "gtk-open", "_Open File", "<control>O", 
                     "Select a CSV file to load as a spreadsheet", open_cb),
                list("Save", "gtk-save", "_Save", "<control>S", 
                     "Save the current spreadsheet to a CSV file", save_cb),
                list("Quit", "gtk-quit", "_Quit", "<control>Q",
                     "Quit the application", quit_cb))
action_group <- gtkActionGroup("spreadsheetActions")
action_group$addActions(actions, main_window)

# define user interface layout

ui_manager <- gtkUIManager()
ui_manager$insertActionGroup(action_group, 0)

merge <- ui_manager$newMergeId()
ui_manager$addUi(merge.id = merge, path = "/", name = "menubar",
                 action = NULL, type = "menubar", top = FALSE)
ui_manager$addUi(merge, "/menubar", "file", "FileMenu", "menu", FALSE)
ui_manager$addUi(merge, "/menubar/file", "open", "Open", "menuitem", FALSE)
ui_manager$addUi(merge, "/menubar/file", "save", "Save", "menuitem", FALSE)
ui_manager$addUi(merge, "/menubar/file", "sep", NULL, "menuitem", FALSE)
ui_manager$addUi(merge, "/menubar/file", "quit", "Quit", "menuitem", FALSE)
ui_manager$addUi(merge, "/", "toolbar", NULL, "toolbar", FALSE)
ui_manager$addUi(merge, "/toolbar", "open", "Open", "toolitem", FALSE)
ui_manager$addUi(merge, "/toolbar", "save", "Save", "toolitem", FALSE)
ui_manager$addUi(merge, "/toolbar", "quit", "Quit", "toolitem", FALSE)

# get the menubar and toolbar
menubar <- ui_manager$getWidget("/menubar")
toolbar <- ui_manager$getWidget("/toolbar")
# so keyboard shortcuts work
main_window$addAccelGroup(ui_manager$getAccelGroup()) 

# create a statusbar
statusbar <- gtkStatusbar()
info <- statusbar$getContextId("info")
statusbar$push(info, "Ready") 

## function to create tree model
create_tree_model <- function(df) {
  df <- cbind(rownames = rownames(df), df)
  ## add logical visbility column (all visible by default)
  filter_df <- cbind(filter = TRUE, df)
  model <- rGtkDataFrame(filter_df)
  ## create filter
  filter_model <- gtkTreeModelFilterNew(model)
  ## show rows that have TRUE in first column
  filter_model$setVisibleColumn(0)
  ## allow sorting of table
  sort_model <-  gtkTreeModelSort(filter_model)
  sort_model
}

## function to create the tree view
create_tree_view <- function(model)
{
  tree_view <- gtkTreeView(model)
  rdf <- model$getModel()$getModel()
  sapply(tail(seq_len(ncol(rdf)), -1), function(j) {
    renderer <- gtkCellRendererText()
    column <- gtkTreeViewColumn(colnames(rdf)[j], renderer, text = j-1)
    column$setSortColumnId(j-1)
    column$setCellDataFunc(renderer, function(column, renderer, model, iter) {
      iter <- model$convertIterToChildIter(iter)$child.iter
      iter <- model$getModel()$convertIterToChildIter(iter)$child.iter
      i <- rdf$getPath(iter)$getIndices()[[1]] + 1
      renderer["text"] <- as.character(rdf[i, j])
    })
    tree_view$appendColumn(column)
  })
  tree_view$setHeadersClickable(TRUE) # sort by clicking column header
  if (is.null(gtkCheckVersion(2,10,0))) # check GTK+ version >= 2.10.x
    tree_view$setGridLines("both")
  tree_view
}

## function to create the filter entry
create_entry <- function(model)
{
  entry <- gtkEntry() # for filter expression
  gSignalConnect(entry, "activate", 
                 function(entry) {
                   ## update column used by filter 
                   ## according to logical expression
                   model[,"filter"] <<- eval(parse(text=entry$text), 
                                             as.data.frame(model))
                 })
  entry
}


# add everything to the containers and show
notebook <- gtkNotebook()
notebook$setTabPos("bottom") # like Excel
vbox <- gtkVBox(FALSE, 0)
vbox$packStart(menubar, FALSE, FALSE, 0)
vbox$packStart(toolbar, FALSE, FALSE, 0)
vbox$packStart(notebook, TRUE, TRUE, 0)
vbox$packStart(statusbar, FALSE, FALSE, 0)
main_window$add(vbox)
main_window$show()

# loads a data.frame as a spreadsheet
load_spreadsheet <- function(df, name)
{
  model <- create_tree_model(df)
  tree_view <- create_tree_view(model)
  entry <- create_entry(model$getModel()$getModel())

  ## pack widgets
  hbox <- gtkHBox(FALSE, 5)
  hbox$packStart(gtkLabel("Filter expression:"), FALSE, FALSE, 0)
  hbox$packStart(entry, TRUE, TRUE, 0)
  vbox <- gtkVBox(FALSE, 5)
  scrolled_window <- gtkScrolledWindow()
  scrolled_window$add(tree_view) # support scrolling for the table
  vbox$packStart(scrolled_window, TRUE, TRUE, 0)
  vbox$packStart(hbox, FALSE, FALSE, 0)

  ## add page to notebook  
  if (missing(name))
    name <- deparse(substitute(df))
  notebook$appendPage(vbox, gtkLabel(name))

  ## update statusbar
  statusbar$push(info, paste("Dataset", name, "loaded."))
}

# example of use
data(mtcars)
load_spreadsheet(mtcars)

# Interfacing with rggobi

library(rggobi)
attach(mtcars)
gg <- ggobi(mtcars)
model <- lm(mpg ~ hp)
plot(hp, mpg)
abline(model)
gSignalConnect(gg, "identify-point", function(gg, plot, id, dataset)
{
  plot(hp, mpg)
  points(hp[id+1], mpg[id+1], pch=19)
  abline(model)
})

# Extending GObject-classes

# A transformed slider class
tform_scale_type <- gClass("RTransformedHScale", "GtkHScale",
  .props = list(
    gParamSpec("R", "expr", "e", "Transformation of scale value",
      default.value = expression(x))
  ),
  .public = list(
    getExpr = function(self) self["expr"],
    getTransformedValue = function(self) self$transformValue(self$value)
  ),
  .private = list(
    transformValue = function(self, x) eval(self$expr, list(x = x))
  ),
  GtkScale = list(
    format_value = function(self, x)
      as.character(self$transformValue(x))
  )
)

# create instance of the class and listen to it for alpha changes
adj <- gtkAdjustment(0.5, 0.15, 1.00, 0.05, 0.5, 0)
s <- gObject(tform_scale_type, adjustment = adj, expr = expression(x^3))
gSignalConnect(s, "value-changed", function(scale) {
  plot(ma_data, col = rgb(0,0,0,scale$getTransformedValue()),
    xlab = "Replicate 1", ylab = "Replicate 2", 
    main = "Expression levels of WT at time 0",  pch = 19)
})

# create rest of GUI as in the previous example
win <- gtkWindow(show = FALSE)
da <- gtkDrawingArea()
vbox <- gtkVBox()
vbox$packStart(da)
vbox$packStart(s, FALSE)
win$add(vbox)
win$setDefaultSize(400,400)

require(cairoDevice)
asCairoDevice(da)

win$showAll()
par(pty = "s")
s$setValue(0.7)

# end
