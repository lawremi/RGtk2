\alias{gtkSocketGetId}
\name{gtkSocketGetId}
\title{gtkSocketGetId}
\description{Gets the window ID of a \code{\link{GtkSocket}} widget, which can then
be used to create a client embedded inside the socket, for
instance with \code{\link{gtkPlugNew}}. }
\usage{gtkSocketGetId(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkSocket}}.}}
\details{The \code{\link{GtkSocket}} must have already be added into a toplevel window 
before you can make this call.}
\value{[\code{\link{GdkNativeWindow}}] the window ID for the socket}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
