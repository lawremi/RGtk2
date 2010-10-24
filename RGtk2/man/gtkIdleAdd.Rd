\alias{gtkIdleAdd}
\name{gtkIdleAdd}
\title{gtkIdleAdd}
\description{
Causes the mainloop to call the given function whenever no events with
higher priority are to be processed. The default priority is
\code{GTK_PRIORITY_DEFAULT}, which is rather low.
\strong{WARNING: \code{gtk_idle_add} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{gIdleAdd}} instead.}
}
\usage{gtkIdleAdd(fun, data = NULL)}
\arguments{\item{\verb{data}}{The information to pass to the function.}}
\value{[numeric] a unique handle for this registration.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
