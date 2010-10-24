\alias{gtkIdleAddPriority}
\name{gtkIdleAddPriority}
\title{gtkIdleAddPriority}
\description{
Like \code{\link{gtkIdleAdd}} this function allows you to have a function called
when the event loop is idle. The difference is that you can give a
priority different from \code{GTK_PRIORITY_DEFAULT} to the idle function.
\strong{WARNING: \code{gtk_idle_add_priority} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{gIdleAddFull()} instead.}
}
\usage{gtkIdleAddPriority(priority, fun, data = NULL)}
\arguments{
\item{\verb{priority}}{The priority which should not be above \code{G_PRIORITY_HIGH_IDLE}.
Note that you will interfere with GTK+ if you use a priority above
\code{GTK_PRIORITY_RESIZE}.}
\item{\verb{data}}{Data to pass to that function.}
}
\value{[numeric] A unique id for the event source.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
