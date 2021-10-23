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
\code{\link{gtkMenuGetAccelPath}(object)}\cr
\code{\link{gtkMenuSetTitle}(object, title)}\cr
\code{\link{gtkMenuGetTitle}(object)}\cr
\code{\link{gtkMenuSetMonitor}(object, monitor.num)}\cr
\code{\link{gtkMenuGetMonitor}(object)}\cr
\code{\link{gtkMenuGetTearoffState}(object)}\cr
\code{\link{gtkMenuSetReserveToggleSize}(object, reserve.toggle.size)}\cr
\code{\link{gtkMenuGetReserveToggleSize}(object)}\cr
\code{\link{gtkMenuPopdown}(object)}\cr
\code{\link{gtkMenuReposition}(object)}\cr
\code{\link{gtkMenuGetActive}(object)}\cr
\code{\link{gtkMenuSetActive}(object, index)}\cr
\code{\link{gtkMenuSetTearoffState}(object, torn.off)}\cr
\code{\link{gtkMenuAttachToWidget}(object, attach.widget)}\cr
\code{\link{gtkMenuDetach}(object)}\cr
\code{\link{gtkMenuGetAttachWidget}(object)}\cr
\code{\link{gtkMenuGetForAttachWidget}(object)}\cr
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
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
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
The \code{\link{GtkMenu}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkMenu} is the equivalent of \code{\link{gtkMenuNew}}.}
\section{User Functions}{\describe{
\item{\code{GtkMenuPositionFunc(menu, x, y, push.in, user.data)}}{
A user function supplied when calling \code{\link{gtkMenuPopup}} which controls the
positioning of the menu when it is displayed.  The function sets the \code{x}
and \code{y} parameters to the coordinates where the menu is to be drawn.
To make the menu appear on a different monitor than the mouse pointer,
\code{\link{gtkMenuSetMonitor}} must be called.

\describe{
\item{\code{menu}}{a \code{\link{GtkMenu}}.}
\item{\code{x}}{the \verb{integer} representing the horizontal position where the
menu shall be drawn.  This is an output parameter.}
\item{\code{y}}{the \verb{integer} representing the vertical position where the
menu shall be drawn.  This is an output parameter.}
\item{\code{push.in}}{This parameter controls how menus placed outside the monitor are handled.
If this is set to \code{TRUE} and part of the menu is outside the monitor then
GTK+ pushes the window into the visible area, effectively modifying the
popup position.
Note that moving and possibly resizing the menu around will alter the
scroll position to keep the menu items "in place", i.e. at the same monitor
position they would have been without resizing.
In practice, this behavior is only useful for combobox popups or option
menus and cannot be used to simply confine a menu to monitor boundaries.
In that case, changing the scroll offset is not desirable.}
\item{\code{user.data}}{the data supplied by the user in the \code{\link{gtkMenuPopup}} \code{data}
parameter.}
}


}
\item{\code{GtkMenuDetachFunc(attach.widget, menu)}}{
A user function supplied when calling \code{\link{gtkMenuAttachToWidget}} which
will be called when the menu is later detached from the widget.

\describe{
\item{\code{attach.widget}}{the \code{\link{GtkWidget}} that the menu is being detached from.}
\item{\code{menu}}{the \code{\link{GtkMenu}} being detached.}
}


}
}}
\section{Signals}{\describe{\item{\code{move-scroll(menu, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{menu}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{accel-group} [\code{\link{GtkAccelGroup}} : *        : Read / Write]}{

The accel group holding accelerators for the menu.
  Since 2.14

}
\item{\verb{accel-path} [character : *                : Read / Write]}{

An accel path used to conveniently construct accel paths of child items.
  Default value: NULL  Since 2.14

}
\item{\verb{active} [integer : Read / Write]}{

The index of the currently selected menu item, or -1 if no
menu item is selected.
  Allowed values: >= -1  Default value: -1  Since 2.14

}
\item{\verb{attach-widget} [\code{\link{GtkWidget}} : *            : Read / Write]}{

The widget the menu is attached to. Setting this property attaches
the menu without a \verb{GtkMenuDetachFunc}. If you need to use a detacher,
use \code{\link{gtkMenuAttachToWidget}} directly.
  Since 2.14

}
\item{\verb{monitor} [integer : Read / Write]}{

The monitor the menu will be popped up on.
  Allowed values: >= -1  Default value: -1  Since 2.14

}
\item{\verb{reserve-toggle-size} [logical : Read / Write]}{

A boolean that indicates whether the menu reserves space for
toggles and icons, regardless of their actual presence.
  
This property should only be changed from its default value
for special-purposes such as tabular menus. Regular menus that
are connected to a menu bar or context menus should reserve
toggle space for consistency.
  Default value: TRUE  Since 2.18

}
\item{\verb{tearoff-state} [logical : Read / Write]}{

A boolean that indicates whether the menu is torn-off.
  Default value: FALSE  Since 2.6

}
\item{\verb{tearoff-title} [character : *                : Read / Write]}{

A title that may be displayed by the window manager when this menu is torn-off.  Default value: NULL

}
}}
\section{Style Properties}{\describe{
\item{\verb{arrow-placement} [GtkArrowPlacement : Read]}{

Indicates where scroll arrows should be placed.
  Default value: GTK_ARROWS_BOTH  Since 2.16

}
\item{\verb{arrow-scaling} [numeric : Read]}{

Arbitrary constant to scale down the size of the scroll arrow.  Allowed values: [0,1]  Default value: 0.7

}
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
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkMenu.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
