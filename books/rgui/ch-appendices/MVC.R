###################################################
### chunk number 1: 
###################################################
#options(prompt=" ")
#options(continue=" ")
#options(width=80)


###################################################
### chunk number 2: 
###################################################
require(mutatr)
require(digest)


###################################################
### chunk number 3: 
###################################################
BaseTrait <- Object$clone()


###################################################
### chunk number 4: 
###################################################
BaseTrait$class <- "Base"


###################################################
### chunk number 5: 
###################################################
BaseTrait$append <- function(key, value, name) {
  l <- self$get_slot(key)
  l <- c(l, value)
  if(!missing(name)) names(l)[length(l)] <- name
  self$set_slot(key, l)
}

BaseTrait$add_class <- function(new_class) self$append("class", new_class)


###################################################
### chunk number 6: 
###################################################
BaseTrait$is <- function(class)  class %in% self$class



###################################################
### chunk number 7: 
###################################################
BaseTrait$list_objects <- function() {
  iter <- ancestor_iterator(self)
  methods <- c()
  properties <- c()
  while(iter$has_next()) {
    ancestor <- iter$get_next()
    nms <- ancestor$slot_names()
    ind <- sapply(nms, function(i) is.function(ancestor$get_slot(i)))
    methods <- unique(c(methods, nms[ind]))
    properties <- unique(c(properties, nms[!ind]))
  }
  list(methods=methods, 
       properties=setdiff(properties,c("protos","class","slot")))
}


###################################################
### chunk number 8: 
###################################################
BaseTrait$list_methods <- function() self$list_objects()$methods
BaseTrait$list_properties <- function() self$list_objects()$properties


###################################################
### chunk number 9: 
###################################################
BaseTrait$do_call <- function(fun, lst=list()) {
  if(self$has_slot(as.character(fun)) &&
     is.function(FUN <- self$get_slot(fun)))
    do.call(FUN, lst)
}


###################################################
### chunk number 10: 
###################################################
Model <- BaseTrait$clone()
Model$add_class("Model")


###################################################
### chunk number 11: 
###################################################
Model$.observers <- list()               # private property (leading .)
Model$add_observer <- function(observer) {
  id <- length(self$.observers) + 1
  self$.observers[[id]] <- observer
}


###################################################
### chunk number 12: 
###################################################
Model$remove_observer <- function(observer) {
  ind <- sapply(self$.observers, function(i) identical(i, observer))
  if(any(ind))
    sapply(which(ind), function(i) self$.observers[[i]] <- NULL)
}


###################################################
### chunk number 13: 
###################################################
Model$notify_observers <- function(key=NULL, value=NA, old_value=NA) {
  sapply(self$.observers, function(i) {
    if(digest(value) != digest(old_value)) { #serialize, then compare
      if(!is.null(key)) {
        i$do_call(sprintf("property_%s_value_changed",key),
                  list(value=value, old_value=old_value))
      }
      i$do_call("model_value_changed", list()) # always call if present
    }
  })
  invisible()
}


###################################################
### chunk number 14: 
###################################################
Model$getattr = function(key) {
  if(self$has_slot(key)) {
    self$get_slot(key)
  } else {
    NULL
  }
}  
Model$setattr = function(key, value) {
  old <- self$getattr(key)
  core(self)$set_slot(key, value)       # avoid a loop
  self$notify_observers(key=key, value=value, old_value=old)
}


###################################################
### chunk number 15: 
###################################################
Model$init_model = function() {
  sapply(self$list_properties(), function(i) {
    self$set_slot(paste("get_",i, sep=""),
                  function(...) self$getattr(i))
    self$set_slot(paste("set_", i, sep=""),
                  function(value, ...) self$setattr(i,value))
  })
  invisible()
}


###################################################
### chunk number 16: 
###################################################
View <- BaseTrait$clone()
View$add_class("View")


###################################################
### chunk number 17: 
###################################################
View$attr <- list()                   # passed to widget constructor
View$widgets <- list()                     # lists all widgets in the view
View$get_widget_by_name <- 
  function(key) self$widgets[[as.character(key)]]


###################################################
### chunk number 18: 
###################################################
View$make_ui <- function(cont, attr=self$attr) {}


###################################################
### chunk number 19: 
###################################################
View$is_realized <- function() 
  length(self$widgets) && isExtant(self$widgets[[1]])


###################################################
### chunk number 20: 
###################################################
View$get_value_from_view <- function() {}
View$set_value_in_view <- function(widget_name, value) {
  if(self$is_realized()) {
    widget <- self$get_widget_by_name(widget_name)
    svalue(widget) <- value
  }
}


###################################################
### chunk number 21: 
###################################################
View$enabled <- function(value) 
  if(self$is_realized())
  invisible(sapply(self$widgets, function(i) enabled(i) <- as.logical(value)))
View$visible <- function(value) 
  if(self$is_realized())
  invisible(sapply(self$widgets, function(i) visible(i) <- as.logical(value)))


###################################################
### chunk number 22: 
###################################################
Controller <- BaseTrait$clone()
Controller$add_class("Controller")


###################################################
### chunk number 23: 
###################################################
Controller$model <- NULL
Controller$assign_model <- function(model) {
  if(is.null(self$model)) self$model <- model
  self$model$remove_observer(self)
  self$model <- model
  self$model$add_observer(self)
  sapply(self$.adapters, function(i) i$set_model(model))
}


###################################################
### chunk number 24: 
###################################################
Controller$view <- NULL
Controller$assign_view <- function(view) {
  if(is.mutatr(self$view) && self$view$is("View"))
    self$remove_view()
  self$view <- view
  sapply(self$.adapters, function(i) i$set_view(view))
}
Controller$remove_view <- function() 
  sapply(self$.adapters, function(i) i$remove_view())


###################################################
### chunk number 25: 
###################################################
Controller$update_from_model <- function() {}
Controller$update_from_view <- function() {}


###################################################
### chunk number 26: 
###################################################
Controller$init_controller <- function() {
  if(!is.null(self$model)) {
    self$update_from_model()
    self$model$init_model()
    self$model$add_observer(self)
  }
  if(!is.null(self$view)) {
    self$update_from_view()
  }
  ## call value_changed methods to update any views
  nms <- self$list_methods()
  sapply(nms[grep("property_(.*)_value_changed$", nms)],
         function(i) {
           prop <-  gsub("property_(.*)_value_changed$","\\1",i)
           self$get_slot(i)(self$model$getattr(prop), NA)
         })
  ## register any adapters
  self$register_adapters()
}


###################################################
### chunk number 27: 
###################################################
## list of adapters. Each adapter specified with a list. E.g.,
## list(property="propname",
##      view_name="viewname",
##      add_handler_name=c("addHandlerChanged"), # or NULL to suppress
##      handler_user_data=NULL
##      )
Controller$adapters <- list()


###################################################
### chunk number 28: 
###################################################
Controller$.adapters <- list()
Controller$.handlerIDs <- list()


###################################################
### chunk number 29: 
###################################################
Controller$register_adapters <- function() {
  if(length(self$adapters) && !length(self$.adapters)) {
    ## make adpater instances
    self$.adapters <- lapply(self$adapters, function(i) {
      Adapter$clone(model=self$model,
                    view=self$view,
                    property=i$property,
                    view_widget_name=i$view_widget_name,
                    add_handler_name=i$add_handler_name,
                    handler_user_data=i$handler_user_data
                    )
    })
    sapply(self$.adapters, function(i) {
      i$init_controller()
    })
  }
}


###################################################
### chunk number 30: 
###################################################
Adapter <- Controller$clone()
Adapter$add_class("Adapter")


###################################################
### chunk number 31: 
###################################################
Adapter$property <- NULL
Adapter$view_widget_name <- NULL       # otherwise last one


###################################################
### chunk number 32: 
###################################################
Adapter$add_handler_name <- c("addHandlerChanged") # 1 or more
Adapter$handler_user_data <- NULL


###################################################
### chunk number 33: 
###################################################
Adapter$update_from_model = function() {
  ## set up model to notify view For example:
  view <- self$view
  meth_name<- sprintf("property_%s_value_changed", self$property)
  self$set_slot(meth_name,
                function(value, old_value) {
                  view$set_value_in_view(self$view_widget_name, value)
                })
  ## call method
  self$get_slot(meth_name)(self$model$getattr(self$property), NA)
}


###################################################
### chunk number 34: 
###################################################
Adapter$update_from_view <- function() {
  ## here view knows about model through controller (this adapter)
  if(!self$view$is_realized()) return()
  if(!is.null(self$view_widget_name))
    widget <- self$view$get_widget_by_name(self$view_widget_name)
  else
    widget <- tail(self$view$widgets, n=1)[[1]]
  ## gWidgets specific call to set up control between model and
  ## view
  if(is.null(self$add_handler_name))
    self$add_handler_name <- "addHandlerChanged"
  sapply(self$add_handler_name, function(i) {
    if(i != "") {
      lst <- list(obj=widget,
                  handler=function(h,...) {
                    self <- h$action$adapter
                    
                    ## set property in model using name
                    value <- svalue(h$obj)
                    if(isExtant(h$obj)) {
                      self$model$setattr(self$property, value)
                    }
                  },
                  action=list(adapter=self))
      self$append(".handlerIDs", do.call(i, lst))
    }
  })
}


###################################################
### chunk number 35: 
###################################################
Adapter$remove_view <- function() {
  if(self$has_slot(".handlerIDs"))
    sapply(self$.handlerIDs, function() removeHandler(self$view, i))
}


###################################################
### chunk number 36: 
###################################################
Adapter$init_controller <- function() {
  ## check that we are all there
  if(!is.null(self$property) &&
     (is.mutatr(model <- self$model) && model$is("Model")) &&
     (is.mutatr(view <- self$view) && view$is("View"))) {
    self$update_from_model()
    self$update_from_view()
    ## call value_changed methods to update any views
    nms <- self$list_methods()
    sapply(nms[grep("property_(.*)_value_changed$", nms)],
           function(i) {
             prop <-  gsub("property_(.*)_value_changed$","\\1",i)
               self$get_slot(i)(self$model$getattr(prop), NA)
           })    
  } else {
    warning("Adapter does not have view, model and property")
  }
  self$model$add_observer(self)
}


###################################################
### chunk number 37: 
###################################################
m <- Model$clone()
m$a <- 1
m$b <- 2.54 * m$a
m$property_a_value_changed <- function(value, old_value) m$set_b(2.54 * value)
m$init_model()
m$add_observer(m)
##
m$b
m$a <- 10
m$b


###################################################
### chunk number 38: 
###################################################
model <- Model$clone(prop1=1)
model$init_model()


###################################################
### chunk number 39: 
###################################################
require(gWidgets)
options(guiToolkit="RGtk2")
view <- View$clone(make_ui=function(cont, attr=.attr) {
  self$widgets[['toplevel']] <- w <- gwindow("Example")
  g <- ggroup(cont=w, horizontal=FALSE)
  self$widgets[["text"]] <- gtext("", cont=g)
})


###################################################
### chunk number 40: 
###################################################
adapter <- Controller$clone(model=model, view=view)
adapter$adapters <- list(prop1=list(
                           property="prop1",
                           view_widget_name="text"
                           ))


###################################################
### chunk number 41: 
###################################################
view$make_ui()
adapter$init_controller()


###################################################
### chunk number 42: 
###################################################
model <- Model$clone(a=0, b=5)
view <- View$clone(make_ui=function(cont, attr) {
  self$widgets$toplevel <- (w <- gwindow("Example"))
  g <- ggroup(cont=w, horizontal=FALSE)
  self$widgets[['e']] <- gedit(0, cont=g)
  self$widgets[['b']] <- gbutton("add", cont=g)
})
controller <- Controller$clone(model=model, view=view)


###################################################
### chunk number 43: 
###################################################
controller$property_a_value_changed <- function(value, old_value) {
  widget <- self$view$get_widget_by_name("e")
  svalue(widget) <- as.character(value)
}
controller$property_b_value_changed <- function(value, old_value)  {
  button <- self$view$get_widget_by_name("b")
  svalue(button) <- sprintf("add %s",value)
}


###################################################
### chunk number 44: 
###################################################
controller$update_from_view <- function() {
  widget <- self$view$get_widget_by_name("e")
  id <- addHandlerChanged(widget, handler= function(h,...) {
    self <- h$action$controller
    model <- self$model
  val <- svalue(h$obj)
  model$set_a(val)
  }, action=list(controller=self))
  self$append(".handlerIDs",id)

  widget <- self$view$get_widget_by_name("b")
  id <- addHandlerClicked(widget, handler = function(h,...) {
    model <- h$action$controller$model
    model$set_a(as.numeric(model$get_a()) + as.numeric(model$get_b()))
  }, action=list(controller=self))
  self$append(".handlerIDs", id)
}


###################################################
### chunk number 45: 
###################################################
model$init_model()
view$make_ui()
controller$init_controller()


###################################################
### chunk number 46: 
###################################################
model <- Model$clone(value=1)
model$init_model()


###################################################
### chunk number 47: 
###################################################
view <- View$clone()
view$make_ui <- function() {
  self$widgets[['toplevel']] <- (w <- gwindow("Example"))
  g <- ggroup(cont = w, horizontal=TRUE, expand=TRUE)
  self$widgets[['slider']] <- gslider(from=0, to=10, by=1, cont=g, expand=TRUE)
  self$widgets[['spinner']] <- gspinbutton(from=0, to=10, by=1, cont=g)
}
view$make_ui()


###################################################
### chunk number 48: 
###################################################
controller <- Controller$clone(model=model, view=view)


###################################################
### chunk number 49: 
###################################################
controller$property_value_value_changed <- function(value, old_value) {
  ## update both widget
  widgets <- lapply(c("slider","spinner"), function(i) 
                    self$view$get_widget_by_name(i))
  sapply(widgets, function(i) svalue(i) <- value)
}


###################################################
### chunk number 50: 
###################################################
controller$update_from_view <- function() {
  handler <- function(h,...) {
    self <- h$action$controller
    model <- self$model
    val <- svalue(h$obj)
    model$set_value(val)
  }
  widgets <- lapply(c("slider","spinner"), function(i) 
                    self$view$get_widget_by_name(i))
  IDs <- sapply(widgets, function(i) 
                addHandlerChanged(i, handler=handler, action=list(controller=self))
                )
}
controller$init_controller()


