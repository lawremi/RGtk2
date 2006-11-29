# Derived from the libsexy UrlLabel (Copyright (C) 2005-2006 Christian Hammond)
# to demonstrate the extension of widgets with RGtk2
# This demo does not actually work (yet), but it's still a good demonstration 
# of many concepts... if you fix it please let me know.
url_label_type <- gClass("RGtk2UrlLabel", "GtkLabel", local({
  link_starts <- link_ends <- link_urls <- NULL
  urls <- NULL
  active_link <- NULL
  popup_menu <- NULL
  event_window <- NULL
  layout_x <- layout_y <- NULL
  
  selectable_changed_cb <- function(url_label, pspec)
  {
    if (!is.null(event_window))
      event_window$raise()
  }
  open_link_activate_cb <- function(menu_item, url_label)
  {
    if (is.null(active_link))
      return()
  
    gSignalEmit(url_label, "url-activated", active_link)
  }
  copy_link_activate_cb <- function(menu_item, url_label)
  {
    if (is.null(active_link))
      return()
  
    clipboard <- url_label$getClipboard("primary")
  
    clipboard$setText(active_link)
  }
  clear_links <- function()
  {
    link_starts <<- link_ends <<- link_urls <<- NULL
  }
  clear_urls <- function()
  {
    urls <<- NULL
  }
  parse_custom_markup <- function(markup)
  {
    regex <- "\<a *href *= *\"([^\"]*)\"\>([^<]*)\</a\>"
    urls <<- gsub(regex, "\\1", markup)
    gsub(regex, "<span color=\"blue\" underline=\"single\">\\2</span>", markup)
  }

  rescan_label <- function(url_label)
  {
    layout <- url_label$getLayout()
    attrs <- layout$getAttributes()
    
    clear_links()
  
    if (is.null(attrs))
      return()
  
    iter <- attrs$getIterator()
  
    offsets <- url_label$getLayoutOffsets()
  
    layout_x <<- offsets$x - url_label[["allocation"]]$x
    layout_y <<- offsets$y - url_label[["allocation"]]$y
  
    more <- T
    while(more) {
      underline <- iter$get("underline")
      color <- iter$get("foreground")
      if (!is.null(underline) && !is.null(color)) {
        range <- iter$range()
        link_starts <<- c(link_starts, range$start)
        link_ends <<- c(link_ends, range$end)
      }
      more <- iter$Next()
    }
  
    link_urls <<- urls
  }

  list(
    .props = list(gParamSpec("character", "markup", "text", "The (hyper)text displayed in the label")),
    .signals = list(c("url_activated", "character")),
    .initialize = function(url_label) {
      gSignalConnect(url_label, "notify::selectable", selectable_changed_cb)
      
      popup_menu <<- gtkMenu()
    
      # Open Link
      item <- gtkImageMenuItemNewWithMnemonic("_Open Link")
      popup_menu$append(item)
      gSignalConnect(item, "activate", open_link_activate_cb, url_label)
      image <- gtkImage(stock = "gtk-jump-to", size = "menu")
      item$setImage(image)
      
      # Copy Link Address
      item <- gtkImageMenuItemNewWithMnemonic("Copy _Link Address")
      popup_menu$append(item)
      gSignalConnect(item, "activate", copy_link_activate_cb, url_label)
      image <- gtkImage(stock = "gtk-copy", size = "menu")
      item$setImage(image)
    },
    
    GtkWidget = list(
      realize = function(widget) {
        widget$parentClass()$realize(widget)
        attributes <- list(
          window.type = "child",
          x = widget[["allocation"]]$x,
          y = widget[["allocation"]]$y,
          width = widget[["allocation"]]$width,
          height = widget[["allocation"]]$height,
          wclass = "input-only",
          event.mask = widget$getEvents() | sum(GdkEventMask[ 
            c("button-press-mask", "button-release-mask", "pointer-motion-mask",
              "pointer-motion-hint-mask",  "leave-notify-mask")])
        )
        event_window <<- gdkWindow(widget$getParentWindow(), attributes)
        event_window$setUserData(widget)
        print("realized")
      },
      
      unrealize = function(widget) {
        # NOTE: It may seem like enough to just set the event_window variable
        # to NULL and have R GC it. However, a GdkWindow is NOT freed when
        # its reference count hits zero (who knows why), so it needs to be
        # explicitly destroyed here. Also, the user data (the widget) is leaked
        # here, because there's no way to track that memory (no set_user_data_full).
        # This usually doesn't matter, since the widget, as a GtkObject, is
        # usually explicitly freed (in fact, 'unrealize' is often called in
        # response to its destruction).
        if (!is.null(event_window)) {
          event_window$destroy()
          event_window <<- NULL
        }
        widget$parentClass()$unrealize(widget)
      },
      
      map = function(widget) {
        widget$parentClass()$map(widget)
        if (!is.null(event_window))
          event_window$show()
      },
      
      unmap = function(widget) {
        if (!is.null(event_window))
          event_window$hide()
        widget$parentClass()$unmap(widget)
      },
      
      size_allocate = function(widget, allocation) {
        widget$parentClass()$sizeAllocate(widget, allocation)
        widget$getLayout()$setWidth(allocation$width * PANGO_SCALE)
        if (!is.null(event_window))
          event_window$moveResize(allocation$x, allocation$y,
            allocation$width, allocation$height)
      
        rescan_label(widget)
      },
      
      motion_notify_event = function(widget, event) {
        browser()
        if (event[["is_hint"]])
          pointer <- event[["window"]]$getPointer()
        else pointer <- list(x = event[["x"]], y = event[["y"]], state = event[["state"]])
        index <- layout$xyToIndex((pointer$x - layout_x) * PANGO_SCALE, (pointer$y - layout_y) * PANGO_SCALE)
        if (index$retval) {
          in_bin <- index$index > link_starts & index$index < link_ends
          if (any(in_bin) && is.null(active_link)) {
            cursor <- gdkCursorNewForDisplay(widget$getDisplay(), "hand2")
            event_window$setCursor(cursor)
            active_link <<- link_urls[which(in_bin)[1]]
          }
        } else {
          if (!is.null(active_link)) {
            if (url_label$getSelectable()) {
              cursor <- gdkCursorNewForDisplay(widget$getDisplay(), "xterm")
              event_window$setCursor(cursor)
            } else event_window$setCursor(NULL)
            active_link <<- NULL
          }
        }
      
        # 
        # Another beautiful libsexy hack. This one prevents the callback
        # from going "Oh boy, they clicked and dragged! Let's select more of
        # the text!"
        # 
        # NOTE: RGtk2 does not and likely will not support modifying GdkEvents
        #if (!is.null(active_link))
        #  event[["state"]] <- 0
      
        widget$parentClass()$motionNotifyEvent(widget, event)
        
        return(FALSE)
      },
      
      leave_notify_event = function(widget, event) {
        widget$parentClass()$leaveNotifyEvent(widget, event)
      
        if (event[["mode"]] == "normal") {
          event_window$setCursor(NULL)
          active_link <<- NULL
        }
      
        return(FALSE)
      },
      
      button_press_event = function(widget, event) {
        browser()
        if (is.null(active_link))
          return(widget$parentClass()$buttonPressEvent(widget, event))
      
        if (event[["button"]] == 1)
          gSignalEmit(url_label, "url_activated", active_link)
        else if (event[["button"]] == 3)
          popup_menu$popup(NULL, NULL, NULL, NULL, event[["button"]], event[["time"]]);
      
        return(TRUE)
      }
    ),
    GObject = list(
      set_property = function(url_label, id, markup, pspec)
      {
        clear_links()
        clear_urls()
        if (is.null(markup) || !nchar(markup)) {
          url_label$setMarkup("")
          return()
        }
      
        new_markup <- parse_custom_markup(markup)
        if (is.null(new_markup))
          url_label$setMarkup("")
        else url_label$setMarkup(new_markup)
        
        rescan_label(url_label)
        print(new_markup)
      }
    )
  )
}))

label <- gObject(url_label_type, wrap = T, selectable = T,
  markup="Check out <a href=\"http://www.ggobi.org\">GGobi</a>, you'll be glad you did.")
win <- gtkWindow()
win$add(label)
#label$show()
win$showAll()


