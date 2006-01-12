\alias{gtkIdleAdd}
\name{gtkIdleAdd}
\title{gtkIdleAdd}
\description{
Causes the mainloop to call the given function whenever no events with 
higher priority are to be processed. The default priority is 
\code{GTK_PRIORITY_DEFAULT}, which is rather low.
\strong{WARNING: \code{gtk_idle_add} is deprecated and should not be used in newly-written code. Use \code{\link{gIdleAdd}} instead.}
}
\usage{gtkIdleAdd(fun, data = NULL)}
\arguments{\item{\code{data}}{[R object] The information to pass to the function.}}
\value{[numeric] a unique handle for this registration.}
\note{
This function is deprecated. You should use \code{GDK_PRIORITY_REDRAW} instead.
This function is deprecated. You should use \code{G_PRIORITY_HIGH} instead.
This function is deprecated. You should use \code{G_PRIORITY_DEFAULT_IDLE} instead.
This function is deprecated. You should use \code{G_PRIORITY_LOW} instead.
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
