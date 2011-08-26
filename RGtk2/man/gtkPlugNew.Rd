\alias{gtkPlugNew}
\name{gtkPlugNew}
\title{gtkPlugNew}
\description{Creates a new plug widget inside the \code{\link{GtkSocket}} identified
by \code{socket.id}. If \code{socket.id} is 0, the plug is left "unplugged" and
can later be plugged into a \code{\link{GtkSocket}} by  \code{\link{gtkSocketAddId}}.}
\usage{gtkPlugNew(socket.id, show = TRUE)}
\arguments{\item{\verb{socket.id}}{the window ID of the socket, or 0.}}
\value{[\code{\link{GtkWidget}}] the new \code{\link{GtkPlug}} widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
