\alias{gtkQuitAddFull}
\name{gtkQuitAddFull}
\title{gtkQuitAddFull}
\description{Registers a function to be called when an instance of the mainloop is left.
In comparison to \code{\link{gtkQuitAdd}} this function adds the possibility to
pass a marshaller and a function to be called when the quit handler is freed.}
\usage{gtkQuitAddFull(main.level, fun, data = NULL)}
\arguments{
\item{\verb{main.level}}{Level at which termination the function shall be called. You
can pass 0 here to have the function run at the termination of the current
mainloop.}
\item{\verb{data}}{Pointer to pass when calling \code{function}.}
}
\details{The former can be used to run interpreted code instead of a compiled function
while the latter can be used to free the information stored in \code{data} (while
you can do this in \code{function} as well)... So this function will mostly be
used by GTK+ wrappers for languages other than C.}
\value{[numeric] A handle for this quit handler (you need this for \code{\link{gtkQuitRemove}})
or 0 if you passed a \code{NULL} pointer in \code{function}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
