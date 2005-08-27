#==========================================================================
# iWidgets support for RGtk2 (experimental code!)
# The iWidgets API is (C)Copyright 2004 Simon Urbanek, All rights reserved.
# The RGtk implementation is (C)opyright 2005 Michael Lawrence, All rights reserved.
# I basically reimplemented iWidgets from Simon's template
#==========================================================================

# For callbacks, I'm also not sure why the handler should receive a structure containing
# itself and some internal id... why not just the object?

# why is horizontal a parameter to this function?
# just linked the handler to the window's closing
iwindow <- function(title="Window", visible=FALSE, horizontal=FALSE, handler=NULL) {
    window <- gtkWindowNew("toplevel", show = F)
	window$setTitle(title)
	
	obj <- list(ref = window)
    class(obj) <- c("iWindow", "iContainer", "iComponent")
    if (!is.null(handler)) {
		id <- connectSignal(window, "delete-event",
			function(obj, win, event) { 
				handler(obj, win, event)
				return(FALSE)
			}, list(handler = handler, obj = obj), user.data.first = T)
		obj$handler.name = id
	}
    if (visible) visible(obj, TRUE)
    obj
}

igroup <- function(horizontal=TRUE, window=NULL) {
    if (horizontal)
		group <- gtkHBoxNew()
	else group <- gtkVBoxNew()
	
	obj <- list(ref = group)
    class(obj) <- c("iGroup", "iContainer", "iComponent")
    if (!is.null(window)) add(window, obj)
    obj
}

ilabel <- function(text, window=NULL) {
    label <- gtkLabelNew(text)
	obj <- list(ref = label)
    class(obj) <- c("iLabel", "iComponent")
    if (!is.null(window)) add(window, obj)
    obj
}

ilist <- function(content, handler=NULL, window=NULL) {
    if(length(content)<2) stop("A list must have at least two elements") # why?
    
	store <- gtkListStoreNew("gchararray")
	store[,1] <- content
	view <- gtkTreeViewNewWithModel(store)
	view$setHeadersVisible(FALSE)
	view$insertColumnWithAttribtues("ilist", gtkCellRendererTextNew(), text = 0)
	sw <- gtkScrolledWindowNew()
	sw$add(view)
	
	obj <- list(ref = sw)
    class(obj) <- c("iList", "iComponent")
    
	if (!is.null(handler)) {
        id <- connectSignal(view$getSelection(), "changed", handler, list(handler=handler,obj=obj),
			user.data.first = T)
		obj$handler.name = id
    }
    if (!is.null(window)) add(window, obj)
    obj
}

idroplist <- function(content, editable=FALSE, handler=NULL, window=NULL) {
    store <- gtkListStoreNew("gchararray")
	store[,1] <- content
	if (editable)
		combo <- gtkComboBoxEntryNewWithModel(store)
	else combo <- gtkComboBoxNewWithModel(store)
	
	obj <- list(ref = combo)
    class(obj) <- c("iDropList", "iComponent")
    if (!is.null(handler)) {
        id <- connectSignal(combo, "changed", handler, list(handler = handler, obj = obj), 
			user.data.first = T)
        o$handler.name = id
    }
    if (!is.null(window)) add(window, obj)
    obj
}

ibutton <- function(text="OK", action=text, handler=NULL, window=NULL) {	
	if (gtkStockLookup(paste("gtk", tolower(text), sep="-"))$retval)
		button <- gtkButtonNewWithStock(text)
	else button <- gtkButtonNewWithLabel(text)
	obj <- list(ref=button, text=text, action=action)
    class(obj) <- c("iButton","iComponent")
    if (!is.null(window))
        add(window, obj)
    if (!is.null(handler)) {
        id <- connectSignal(button, "clicked", handler, list(handler=handler, obj=obj), 
			user.data.first = T)
		obj$handler.name = id
	}
    obj
}

iedit <- function(text="", width=10, action=NULL, handler=NULL, window=NULL) {
    if (is.null(text)) text<-""
    
	entry <- gtkEntryNew()
	entry$setMaxLength(width)
	
	obj <- list(ref = entry, text = text, width = width, action = action)
    class(obj) <- c("iEdit","iComponent")
    if (!is.null(window))
        add(window, obj)
    if (!is.null(handler)) {
        id <- connectSignal(entry, "activate", handler, list(handler = handler, obj = obj),
			user.data.first = T)
        obj$handler.name = id
    }
    obj
}

icheckbox <- function(text, checked=FALSE, handler=NULL, window=NULL) {
    check <- gtkCheckButtonNewWithLabel(text)
	check$setActive(checked)
    obj <- list(ref=check, text=text)
    class(obj)<-c("iCheckbox","iComponent")
    if (!is.null(window))
        add(window, obj)
    if (!is.null(handler)) {
        id <- connectSignal(check, "toggled", handler, list(handler=handler,obj=obj), user.data.first = T)
        obj$handler.name = id
    }
    obj
}

iradio <- function(items, selected=1, horizontal=FALSE, handler=NULL, window=NULL) {
    if (length(items)<2) stop("Radio button group makes sense only with at least two items.")
    button <- gtkRadioButtonNewWithLabel(NULL, items[[1]])
	for (item in items[-1])
		button <- gtkRadioButtonNewWithLabelFromWidget(button, item)
	buttons <- button$getGroup()
	buttons[[selected]]$setActive(TRUE)
	if (horizontal)
		box <- gtkHBoxNew()
	else box <- gtkVBoxNew()
	for (button in buttons)
		box$packEnd(button, TRUE, TRUE, 0)
	obj <- list(ref=box, items=items)
    class(obj) <- c("iRadio","iComponent")
    if (!is.null(window))
        add(window, obj)
    if (!is.null(handler)) {
        id <- connectSignal(button, "toggled", handler, list(handler = handler, obj=obj),
			user.data.first = T)
        obj$handler.name = id
    }
    obj
}

islider <- function(min=0, max=100, value=min, horizontal=TRUE, handler=NULL, window=NULL) {
    if (horizontal)
		scale <- gtkHScaleNewWithRange(min, max, 1)
	else scale <- gtkVScaleNewWithRange(min, max, 1)
	scale$setValue(value)
	
	obj <- list(ref = scale)
	
    class(obj) <- c("iSlider", "iComponent")
    if (!is.null(handler)) {
        id <- connectSignal(scale, "value-changed", handler, list(handler=handler,obj=obj),
			user.data.first = T) 
		obj$handler.name = id
    }
    
    if (!is.null(window)) add(window, obj)
    obj
}

igraphics <- function(width=400, height=300, ps=12, window=NULL) {
    require(gtkDevice)
	da <- gtkDrawingAreaNew()
	da$setSizeRequest(width, height)
	device <- asGtkDevice(da)
    obj <- list(ref=da,gdobj=da,device=device)
    class(obj) <- c("iGD", "iComponent")
    if (!is.null(window)) add(window, obj)
    obj
}

print.iComponent <- function(x,...) {
    cat(paste(class(x)[1],"[",class(x$ref)[1],"]\n",sep=''))
}

get.value <- function(...) UseMethod("get.value")
set.value <- function(...) UseMethod("set.value")

get.value.iSlider <- function(s)
    s$ref$getValue()
set.value.iSlider <- function(s, value)
    s$ref$setValue(value)

get.value.iLabel <- function(s)
    s$ref$getText()
set.value.iLabel <- function(s, value)
    s$ref$setText(value)

get.value.iEdit <- function(s)
    s$ref$getText()
set.value.iEdit <- function(s, value)
    s$ref$insertText(value)

get.value.iRadio <- function(s) 
	which(sapply(s$ref$getChildren(), gtkToggleButtonGetActive))
	
set.value.iRadio <- function(s, value)
    s$ref$getChildren()[[value]]$setActive(TRUE)

get.value.iCheckbox <- function(s)
    s$ref$getActive()
set.value.iCheckbox <- function(s, value)
    s$ref$setActive(TRUE)

get.value.iDropList <- function(s, index=FALSE)
{
	if (!index) 
		s$ref$getModel()$unload(paths=s$ref$getSelection()$getSelectedRows())[,1] 
	else s$ref$getSelection()$getSelectedRows()[[1]]$getIndices()+1
}
		
set.value.iDropList <- function(s, value, index=FALSE)
{
    if (!index)
		s$ref$getModel()[get.value(s,TRUE)-1, 1] <- value
	else s$ref$getSelection()$selectPath(gtkTreePathNewFromIndices(value-1))
}
	
add.spring <- function(cont) {
	cont$ref$packStart(gtkInvisibleNew(), TRUE, TRUE, 0)
}

add.space <- function(cont, amount, horizontal=TRUE) {
    invis <- gtkInvisibleNew()
	if (horizontal)
		invis$setSizeRequest(amount, -1)
	else invis$setSizeRequest(-1, amount)
	cont$ref$packStart(invis, FALSE, FALSE, 0)
}

add <- function(...) UseMethod("add")
delete <- function(...) UseMethod("delete")
visible <- function(...) UseMethod("visible")
"visible<-" <- function(...) UseMethod("visible")
dispose <- function(...) UseMethod("dispose")

update.iComponent <- function(c) {
    c$ref$queueDraw()
}

#update.iWindow <- function(c) {
#    .jcall(c$ref, "V", "pack")
#    .jcall(c$ref, "V", "validate")
#}

dispose.iWindow <- function(win) {
    win$ref$destroy()
}

add.iWindow <- function(win, widget) {
	win$ref$add(widget$ref)
}
add.iContainer <- function(cont, widget) {
	cont$ref$packStart(widget$ref, FALSE, FALSE, 0)
}

delete.iContainer <- function(cont, widget) {
    cont$ref$remove(widget$ref)
}

visible.iComponent <- function(obj, set=NULL)
{
    if (is.null(set)) 
		bitCheck(bitAnd(obj$ref$flags(), GtkWidgetFlags["visible"])) 
	else if (set) obj$ref$show()
	else obj$ref$hide()
}
