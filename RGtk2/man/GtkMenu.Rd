\alias{GtkMenu}
\alias{gtkMenu}
\alias{GtkMenuPositionFunc}
\alias{GtkMenuDetachFunc}
\name{GtkMenu}
\title{GtkMenu}
\description{A menu widget}
\section{Methods and Functions}{
\code{\link{gtkMenuNew}(show = TRUE)}\cr
\code{\link{gtkMenuSetScreen}(object, screen = NULL)}\cr
\code{\link{gtkMenuReorderChild}(object, child, position)}\cr
\code{\link{gtkMenuAttach}(object, child, left.attach, right.attach, top.attach, bottom.attach)}\cr
\code{\link{gtkMenuPopup}(object, parent.menu.shell = NULL, parent.menu.item = NULL, func = NULL, data = NULL, button, activate.time)}\cr
\code{\link{gtkMenuSetAccelGroup}(object, accel.group)}\cr
\code{\link{gtkMenuGetAccelGroup}(object)}\cr
\code{\link{gtkMenuSetAccelPath}(object, accel.path)}\cr
\code{\link{gtkMenuSetTitle}(object, title)}\cr
\code{\link{gtkMenuGetTearoffState}(object)}\cr
\code{\link{gtkMenuGetTitle}(object)}\cr
\code{\link{gtkMenuPopdown}(object)}\cr
\code{\link{gtkMenuReposition}(object)}\cr
\code{\link{gtkMenuGetActive}(object)}\cr
\code{\link{gtkMenuSetActive}(object, index)}\cr
\code{\link{gtkMenuSetTearoffState}(object, torn.off)}\cr
\code{\link{gtkMenuAttachToWidget}(object, attach.widget)}\cr
\code{\link{gtkMenuDetach}(object)}\cr
\code{\link{gtkMenuGetAttachWidget}(object)}\cr
\code{\link{gtkMenuGetForAttachWidget}(object)}\cr
\code{\link{gtkMenuSetMonitor}(object, monitor.num)}\cr
\code{gtkMenu(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkMenuShell
                                 +----GtkMenu
                                       +----GtkRecentChooserMenu}}
\section{Interfaces}{GtkMenu implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{A \verb{\link{GtkMenu}} is a \verb{\link{GtkMenuShell}} that implements a drop down menu consisting of
a list of \verb{\link{GtkMenuItem}} objects which can be navigated and activated by the 
user to perform application functions.
  
A \verb{\link{GtkMenu}} is most commonly dropped down by activating a \verb{\link{GtkMenuItem}} in a 
\verb{\link{GtkMenuBar}} or popped up by activating a \verb{\link{GtkMenuItem}} in another \verb{\link{GtkMenu}}.  
  
A \verb{\link{GtkMenu}} can also be popped up by activating a \verb{\link{GtkOptionMenu}}.  
Other composite widgets such as the \verb{\link{GtkNotebook}} can pop up a \verb{\link{GtkMenu}} 
as well.
  
Applications can display a \verb{\link{GtkMenu}} as a popup menu by calling the 
\code{\link{gtkMenuPopup}} function.  The example below shows how an application
can pop up a menu when the 3rd mouse button is pressed.  
  
 \emph{Connecting the popup signal handler.}
\preformatted{
## connect our handler which will popup the menu 
gSignalConnect(window, "button_press_event", my_popup_handler, menu,
               user.data.first=TRUE)
}  
 \emph{Signal handler which displays a popup menu.}
\preformatted{
# The popup handler
my_popup_handler <- function(widget, event)
{
  stopifnot(widget != NULL)
  checkPtrType(widget, "GtkMenu")
  stopifnot(event != NULL)

  ## The "widget" is the menu that was supplied when 
  ## gSignalConnect() was called.
  menu <- widget

  if (event[["type"]] == "button-press") {
    if (event[["button"]] == 3) {
      menu$popup(button=event[["button"]], activate.time=event[["time"]])
      return(TRUE)
    }
  }

  return(FALSE)
}

}}
\section{Structures}{\describe{\item{\verb{GtkMenu}}{
The \verb{\link{GtkMenu}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkMenu} is the equivalent of \code{\link{gtkMenuNew}}.}
\section{User Functions}{\describe{
\item{\code{GtkMenuPositionFunc(menu, x, y, push.in, user.data)}}{
A user function supplied when calling \code{\link{gtkMenuPopup}} which controls the
positioning of the menu when it is displayed.  The function sets the \code{x}
and \code{y} parameters to the coordinates where the menu is to be drawn.

\describe{
\item{\code{menu}}{[\verb{\link{GtkMenu}}] a \verb{\link{GtkMenu}}.}
\item{\code{x}}{[integer] the \verb{integer} representing the horizontal position where the
menu shall be drawn.  This is an output parameter.}
\item{\code{y}}{[integer] the \verb{integer} representing the vertical position where the
menu shall be drawn.  This is an output parameter.}
\item{\code{push.in}}{[logical] This parameter controls how menus placed outside the monitor are handled.
        If this is set to TRUE and part of the menu is outside the monitor then
        GTK+ pushes the window into the visible area, effectively modifying the
        popup position.
        Note that moving and possibly resizing the menu around will alter the
        scroll position to keep the menu items "in place", i.e. at the same monitor
        position they would have been without resizing.
        In practice, this behavior is only useful for combobox popups or option
        menus and cannot be used to simply confine a menu to monitor boundaries.
        In that case, changing the scroll offset is not desirable.
        To simply constrain the menu within the monitor, get its size with
        \code{\link{gtkWidgetSizeRequest}} before showing it, and alter the coordinates
        passed to \code{\link{gtkMenuPopup}} accordingly.}
\item{\code{user.data}}{[R object] the data supplied by the user in the \code{\link{gtkMenuPopup}} \code{data}
parameter.}
}


}
\item{\code{GtkMenuDetachFunc(attach.widget, menu)}}{
A user function supplied when calling \code{\link{gtkMenuAttachToWidget}} which 
will be called when the menu is later detached from the widget.

\describe{
\item{\code{attach.widget}}{[\verb{\link{GtkWidget}}] the \verb{\link{GtkWidget}} that the menu is being detached from.}
\item{\code{menu}}{[\verb{\link{GtkMenu}}] the \verb{\link{GtkMenu}} being detached.}
}


}
}}
\section{Signals}{\describe{\item{\code{move-scroll(menu, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{menu}}{[\verb{\link{GtkMenu}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkScrollType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{tearoff-state} [logical : Read / Write]}{

A boolean that indicates whether the menu is torn-off.  

  Default value: FALSE  Since  2.6

}
\item{\verb{tearoff-title} [character : *                : Read / Write]}{

A title that may be displayed by the window manager when this menu is torn-off.  Default value: ""

}
}}
\section{Style Properties}{\describe{
\item{\verb{double-arrows} [logical : Read]}{

When scrolling, always show both arrows.  Default value: TRUE

}
\item{\verb{horizontal-offset} [integer : Read]}{

When the menu is a submenu, position it this number of pixels offset horizontally.  Default value: -2

}
\item{\verb{horizontal-padding} [integer : Read]}{

Extra space at the left and right edges of the menu.  Allowed values: >= 0  Default value: 0

}
\item{\verb{vertical-offset} [integer : Read]}{

When the menu is a submenu, position it this number of pixels offset vertically.  Default value: 0

}
\item{\verb{vertical-padding} [integer : Read]}{

Extra space at the top and bottom of the menu.  Allowed values: >= 0  Default value: 1

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkMenu.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
