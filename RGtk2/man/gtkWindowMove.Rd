\alias{gtkWindowMove}
\name{gtkWindowMove}
\title{gtkWindowMove}
\description{Asks the window manager to move
\code{window} to the given position.  Window managers are free to ignore
this; most window managers ignore requests for initial window
positions (instead using a user-defined placement algorithm) and
honor requests after the window has already been shown.}
\usage{gtkWindowMove(object, x, y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWindow}}]  a \code{\link{GtkWindow}}}
\item{\code{x}}{[integer]  X coordinate to move window to}
\item{\code{y}}{[integer]  Y coordinate to move window to}
}
\details{Note: the position is the position of the gravity-determined
reference point for the window. The gravity determines two things:
first, the location of the reference point in root window
coordinates; and second, which point on the window is positioned at
the reference point.
  
By default the gravity is \code{GDK_GRAVITY_NORTH_WEST}, so the reference
point is simply the \code{x}, \code{y} supplied to \code{\link{gtkWindowMove}}. The
top-left corner of the window decorations (aka window frame or
border) will be placed at \code{x}, \code{y}.  Therefore, to position a window
at the top left of the screen, you want to use the default gravity
(which is \code{GDK_GRAVITY_NORTH_WEST}) and move the window to 0,0.
  
To position a window at the bottom right corner of the screen, you
would set \code{GDK_GRAVITY_SOUTH_EAST}, which means that the reference
point is at \code{x} + the window width and \code{y} + the window height, and
the bottom-right corner of the window border will be placed at that
reference point. So, to place a window in the bottom right corner
you would first set gravity to south east, then write:
\code{gtk_window_move (window, } (note that this
example does not take multi-head scenarios into account).
  
The Extended Window Manager Hints specification at 
http://www.org/Standards/wm-spec (\url{http://www.org/Standards/wm-spec}) has a 
nice table of gravities in the "implementation notes" section.
  
The \code{\link{gtkWindowGetPosition}} documentation may also be relevant.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
