\alias{gtkPlugNew}
\name{gtkPlugNew}
\title{gtkPlugNew}
\description{Creates a new plug widget inside the \verb{\link{GtkSocket}} identified
by \code{socket.id}. If \code{socket.id} is 0, the plug is left "unplugged" and
can later be plugged into a \verb{\link{GtkSocket}} by  \code{\link{gtkSocketAddId}}.}
\usage{gtkPlugNew(socket.id, show = TRUE)}
\arguments{\item{\verb{socket.id}}{[\verb{\link{GdkNativeWindow}}]   the window ID of the socket, or 0.}}
\value{[\verb{\link{GtkWidget}}]  the new \verb{\link{GtkPlug}} widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
