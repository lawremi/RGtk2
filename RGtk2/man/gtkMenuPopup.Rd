\alias{gtkMenuPopup}
\name{gtkMenuPopup}
\title{gtkMenuPopup}
\description{Displays a menu and makes it available for selection.  Applications can use
this function to display context-sensitive menus, and will typically supply
\code{NULL} for the \code{parent.menu.shell}, \code{parent.menu.item}, \code{func} and \code{data} 
parameters. The default menu positioning function will position the menu
at the current mouse cursor position.}
\usage{gtkMenuPopup(object, parent.menu.shell = NULL, parent.menu.item = NULL, 
    func = NULL, data = NULL, button, activate.time)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkMenu}}.}
\item{\verb{parent.menu.shell}}{the menu shell containing the triggering menu item, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{parent.menu.item}}{the menu item whose activation triggered the popup, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{func}}{a user supplied function used to position the menu, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{data}}{user supplied data to be passed to \code{func}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{button}}{the mouse button which was pressed to initiate the event.}
\item{\verb{activate.time}}{the time at which the activation event occurred.}
}
\details{The \code{button} parameter should be the mouse button pressed to initiate
the menu popup. If the menu popup was initiated by something other than
a mouse button press, such as a mouse button release or a keypress,
\code{button} should be 0.
  
The \code{activate.time} parameter is used to conflict-resolve initiation of
concurrent requests for mouse/keyboard grab requests. To function
properly, this needs to be the time stamp of the user event (such as
a mouse click or key press) that caused the initiation of the popup.
Only if no such event is available, \code{\link{gtkGetCurrentEventTime}} can
be used instead.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
