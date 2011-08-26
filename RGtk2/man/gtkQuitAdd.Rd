\alias{gtkQuitAdd}
\name{gtkQuitAdd}
\title{gtkQuitAdd}
\description{Registers a function to be called when an instance of the mainloop is left.}
\usage{gtkQuitAdd(main.level, fun, data = NULL)}
\arguments{
\item{\verb{main.level}}{Level at which termination the function shall be called. You
can pass 0 here to have the function run at the termination of the current
mainloop.}
\item{\verb{data}}{Pointer to pass when calling \code{function}.}
}
\value{[numeric] A handle for this quit handler (you need this for \code{\link{gtkQuitRemove}})
or 0 if you passed a \code{NULL} pointer in \code{function}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
