\alias{gtkPlugNewForDisplay}
\name{gtkPlugNewForDisplay}
\title{gtkPlugNewForDisplay}
\description{Create a new plug widget inside the \code{\link{GtkSocket}} identified by socket_id.}
\usage{gtkPlugNewForDisplay(display, socket.id)}
\arguments{
\item{\verb{display}}{the \code{\link{GdkDisplay}} on which \code{socket.id} is displayed}
\item{\verb{socket.id}}{the XID of the socket's window.}
}
\details{Since 2.2}
\value{[\code{\link{GtkWidget}}] the new \code{\link{GtkPlug}} widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
