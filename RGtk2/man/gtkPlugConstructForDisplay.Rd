\alias{gtkPlugConstructForDisplay}
\name{gtkPlugConstructForDisplay}
\title{gtkPlugConstructForDisplay}
\description{Finish the initialization of \code{plug} for a given \code{\link{GtkSocket}} identified by
\code{socket.id} which is currently displayed on \code{display}.
This function will generally only be used by classes deriving from \code{\link{GtkPlug}}.}
\usage{gtkPlugConstructForDisplay(object, display, socket.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPlug}}.}
\item{\verb{display}}{the \code{\link{GdkDisplay}} associated with \code{socket.id}'s
\code{\link{GtkSocket}}.}
\item{\verb{socket.id}}{the XID of the socket's window.}
}
\details{Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
