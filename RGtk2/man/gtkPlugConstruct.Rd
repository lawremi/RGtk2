\alias{gtkPlugConstruct}
\name{gtkPlugConstruct}
\title{gtkPlugConstruct}
\description{Finish the initialization of \code{plug} for a given \verb{\link{GtkSocket}} identified by
\code{socket.id}. This function will generally only be used by classes deriving from \verb{\link{GtkPlug}}.}
\usage{gtkPlugConstruct(object, socket.id)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkPlug}}]  a \verb{\link{GtkPlug}}.}
\item{\verb{socket.id}}{[\verb{\link{GdkNativeWindow}}]  the XID of the socket's window.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
