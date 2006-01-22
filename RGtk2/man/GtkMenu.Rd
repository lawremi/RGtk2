\alias{GtkMenu}
\alias{gtkMenu}
\alias{GtkMenuPositionFunc}
\alias{GtkMenuDetachFunc}
\name{GtkMenu}
\title{GtkMenu}
\description{A menu widget}
\usage{gtkMenu(show = TRUE)}
\section{Methods and Functions}{
\link{gtkMenuNew}(show = TRUE)
\link{gtkMenuSetScreen}(object, screen = NULL)
\link{gtkMenuReorderChild}(object, child, position)
\link{gtkMenuAttach}(object, child, left.attach, right.attach, top.attach, bottom.attach)
\link{gtkMenuPopup}(object, parent.menu.shell, parent.menu.item, func, data = NULL, button, activate.time)
\link{gtkMenuSetAccelGroup}(object, accel.group)
\link{gtkMenuGetAccelGroup}(object)
\link{gtkMenuSetAccelPath}(object, accel.path)
\link{gtkMenuSetTitle}(object, title)
\link{gtkMenuGetTearoffState}(object)
\link{gtkMenuGetTitle}(object)
\link{gtkMenuPopdown}(object)
\link{gtkMenuReposition}(object)
\link{gtkMenuGetActive}(object)
\link{gtkMenuSetActive}(object, index)
\link{gtkMenuSetTearoffState}(object, torn.off)
\link{gtkMenuAttachToWidget}(object, attach.widget)
\link{gtkMenuDetach}(object)
\link{gtkMenuGetAttachWidget}(object)
\link{gtkMenuGetForAttachWidget}(object)
\link{gtkMenuSetMonitor}(object, monitor.num)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkMenuShell}
                           +----GtkMenu}}
\section{Interfaces}{GtkMenu implements
 AtkImplementorIface.}
\section{Detailed Description}{A \code{\link{GtkMenu}} is a \code{\link{GtkMenuShell}} that implements a drop down menu consisting of
a list of \code{\link{GtkMenuItem}} objects which can be navigated and activated by the 
user to perform application functions.
  
A \code{\link{GtkMenu}} is most commonly dropped down by activating a \code{\link{GtkMenuItem}} in a 
\code{\link{GtkMenuBar}} or popped up by activating a \code{\link{GtkMenuItem}} in another \code{\link{GtkMenu}}.  
  
A \code{\link{GtkMenu}} can also be popped up by activating a \code{\link{GtkOptionMenu}}.  
Other composite widgets such as the \code{\link{GtkNotebook}} can pop up a \code{\link{GtkMenu}} 
as well.
  
Applications can display a \code{\link{GtkMenu}} as a popup menu by calling the 
\code{\link{gtkMenuPopup}} function.  The example below shows how an application
can pop up a menu when the 3rd mouse button is pressed.  
  \preformatted{
    # connect our handler which will popup the menu 
    gSignalConnect(window, "button_press_event", my_popup_handler, menu, user.data.first=T)
}  \preformatted{
# The popup handler
my_popup_handler <- function(widget, event)
{
  stopifnot(widget != NULL)
  checkPtrType(widget, "GtkMenu")
  stopifnot(event != NULL)

  # The "widget" is the menu that was supplied when 
  # gSignalConnect() was called.
  #
  menu <- widget

  if (event[["type"]] == "button-press")
    {
      if (event[["button"]] == 3)
	{
	  menu$popup(button=event[["button"]], activate.time=event[["time"]])
	  return(TRUE)
	}
    }

  return(FALSE)
}

}}
\section{Structures}{\describe{\item{\code{GtkMenu}}{
The \code{\link{GtkMenu}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkMenu} is the equivalent of \code{\link{gtkMenuNew}}.}
\section{User Functions}{\describe{
\item{\code{GtkMenuPositionFunc(menu, x, y, push.in, user.data)}}{
A user function supplied when calling \code{\link{gtkMenuPopup}} which controls the
positioning of the menu when it is displayed.  The function sets the \code{x}
and \code{y} parameters to the coordinates where the menu is to be drawn.

\describe{
\item{\code{menu}}{[\code{\link{GtkMenu}}] a \code{\link{GtkMenu}}.}
\item{\code{x}}{[integer] the \code{integer} representing the horizontal position where the
menu shall be drawn.  This is an output parameter.}
\item{\code{y}}{[integer] the \code{integer} representing the vertical position where the
menu shall be drawn.  This is an output parameter.}
\item{\code{push.in}}{[logical] whether the menu should be pushed in to be completely inside the
  screen instead of just clamped to the size to the screen.}
\item{\code{user.data}}{[R object] the data supplied by the user in the \code{\link{gtkMenuPopup}} \code{data}
parameter.}
}

}
\item{\code{GtkMenuDetachFunc(attach.widget, menu)}}{
A user function supplied when calling \code{\link{gtkMenuAttachToWidget}} which 
will be called when the menu is later detached from the widget.

\describe{
\item{\code{attach.widget}}{[\code{\link{GtkWidget}}] the \code{\link{GtkWidget}} that the menu is being detached from.}
\item{\code{menu}}{[\code{\link{GtkMenu}}] the \code{\link{GtkMenu}} being detached.}
}

}
}}
\section{Signals}{\describe{\item{\code{move-scroll(menu, arg1, user.data)}}{


\describe{
\item{\code{menu}}{[\code{\link{GtkMenu}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkScrollType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{tearoff-state} [logical : Read / Write]}{

A boolean that indicates whether the menu is torn-off.  

  Default value: FALSE  Since  2.6

}
\item{\code{tearoff-title} [character : Read / Write]}{

A title that may be displayed by the window manager when this menu is torn-off.  Default value: ""

}
}}
\section{Style Properties}{\describe{
\item{\code{horizontal-offset} [integer : Read]}{

When the menu is a submenu, position it this number of pixels offset horizontally.  Default value: -2

}
\item{\code{vertical-offset} [integer : Read]}{

When the menu is a submenu, position it this number of pixels offset vertically.  Default value: 0

}
\item{\code{vertical-padding} [integer : Read]}{

Extra space at the top and bottom of the menu.  Allowed values: >= 0  Default value: 1

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkMenu.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
