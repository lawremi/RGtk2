\alias{gtkPlugNewForDisplay}
\name{gtkPlugNewForDisplay}
\title{gtkPlugNewForDisplay}
\description{Create a new plug widget inside the \verb{\link{GtkSocket}} identified by socket_id.}
\usage{gtkPlugNewForDisplay(display, socket.id)}
\arguments{
\item{\verb{display}}{[\verb{\link{GdkDisplay}}]  the \verb{\link{GdkDisplay}} on which \code{socket.id} is displayed}
\item{\verb{socket.id}}{[\verb{\link{GdkNativeWindow}}]  the XID of the socket's window.}
}
\details{  Since  2.2}
\value{[\verb{\link{GtkWidget}}]  the new \verb{\link{GtkPlug}} widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
