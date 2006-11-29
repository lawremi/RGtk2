\alias{gtkMenuPopup}
\name{gtkMenuPopup}
\title{gtkMenuPopup}
\description{Displays a menu and makes it available for selection.  Applications can use
this function to display context-sensitive menus, and will typically supply
\code{NULL} for the \code{parent.menu.shell}, \code{parent.menu.item}, \code{func} and \code{data} 
parameters. The default menu positioning function will position the menu
at the current mouse cursor position.}
\usage{gtkMenuPopup(object, parent.menu.shell = NULL, parent.menu.item = NULL, func = NULL, data = NULL, button, activate.time)}
\arguments{
\item{\code{object}}{[\code{\link{GtkMenu}}]  a \code{\link{GtkMenu}}.}
\item{\code{parent.menu.shell}}{[\code{\link{GtkWidget}}]  the menu shell containing the triggering menu item, or \code{NULL}}
\item{\code{parent.menu.item}}{[\code{\link{GtkWidget}}]  the menu item whose activation triggered the popup, or \code{NULL}}
\item{\code{func}}{[GtkMenuPositionFunc]  a user supplied function used to position the menu, or \code{NULL}}
\item{\code{data}}{[R object]  user supplied data to be passed to \code{func}.}
\item{\code{button}}{[numeric]  the mouse button which was pressed to initiate the event.}
\item{\code{activate.time}}{[numeric]  the time at which the activation event occurred.}
}
\details{The \code{button} parameter should be the mouse button pressed to initiate
the menu popup. If the menu popup was initiated by something other than
a mouse button press, such as a mouse button release or a keypress,
\code{button} should be 0.
  
The \code{activate.time} parameter should be the time stamp of the event that
initiated the popup. If such an event is not available, use
\code{\link{gtkGetCurrentEventTime}} instead.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
