\alias{gtkPlugConstructForDisplay}
\name{gtkPlugConstructForDisplay}
\title{gtkPlugConstructForDisplay}
\description{Finish the initialization of \code{plug} for a given \verb{\link{GtkSocket}} identified by
\code{socket.id} which is currently displayed on \code{display}.
This function will generally only be used by classes deriving from \verb{\link{GtkPlug}}.}
\usage{gtkPlugConstructForDisplay(object, display, socket.id)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkPlug}}]  a \verb{\link{GtkPlug}}.}
\item{\verb{display}}{[\verb{\link{GdkDisplay}}]  the \verb{\link{GdkDisplay}} associated with \code{socket.id}'s 
     \verb{\link{GtkSocket}}.}
\item{\verb{socket.id}}{[\verb{\link{GdkNativeWindow}}]  the XID of the socket's window.}
}
\details{  Since  2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
