\alias{gtkMain}
\name{gtkMain}
\title{gtkMain}
\description{Runs the main loop until \code{\link{gtkMainQuit}} is called. You can nest calls to
\code{\link{gtkMain}}. In that case \code{\link{gtkMainQuit}} will make the innermost invocation
of the main loop return.}
\usage{gtkMain()}
\note{
This function is deprecated. You should use \code{GDK_PRIORITY_REDRAW} instead.
This function is deprecated. You should use \code{G_PRIORITY_HIGH} instead.
This function is deprecated. You should use \code{G_PRIORITY_DEFAULT_IDLE} instead.
This function is deprecated. You should use \code{G_PRIORITY_LOW} instead.
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
