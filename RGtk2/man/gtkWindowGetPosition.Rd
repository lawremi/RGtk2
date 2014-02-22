\alias{gtkWindowGetPosition}
\name{gtkWindowGetPosition}
\title{gtkWindowGetPosition}
\description{This function returns the position you need to pass to
\code{\link{gtkWindowMove}} to keep \code{window} in its current position.  This
means that the meaning of the returned value varies with window
gravity. See \code{\link{gtkWindowMove}} for more details.}
\usage{gtkWindowGetPosition(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{If you haven't changed the window gravity, its gravity will be
\verb{GDK_GRAVITY_NORTH_WEST}. This means that \code{\link{gtkWindowGetPosition}}
gets the position of the top-left corner of the window manager
frame for the window. \code{\link{gtkWindowMove}} sets the position of this
same top-left corner.
  \code{\link{gtkWindowGetPosition}} is not 100\% reliable because the X Window System
does not specify a way to obtain the geometry of the
decorations placed on a window by the window manager.
Thus GTK+ is using a "best guess" that works with most
window managers.
  
Moreover, nearly all window managers are historically broken with
respect to their handling of window gravity. So moving a window to
its current position as returned by \code{\link{gtkWindowGetPosition}} tends
to result in moving the window slightly. Window managers are
slowly getting better over time.
  
If a window has gravity \verb{GDK_GRAVITY_STATIC} the window manager
frame is not relevant, and thus \code{\link{gtkWindowGetPosition}} will
always produce accurate results. However you can't use static
gravity to do things like place a window in a corner of the screen,
because static gravity ignores the window manager decorations.
  
If you are saving and restoring your application's window
positions, you should know that it's impossible for applications to
do this without getting it somewhat wrong because applications do
not have sufficient knowledge of window manager state. The Correct
Mechanism is to support the session management protocol (see the
"GnomeClient" object in the GNOME libraries for example) and allow
the window manager to save your window sizes and positions.}
\value{
A list containing the following elements:
\item{\verb{root.x}}{return location for X coordinate of gravity-determined reference point. \emph{[  \acronym{out}  ]}}
\item{\verb{root.y}}{return location for Y coordinate of gravity-determined reference point. \emph{[  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
