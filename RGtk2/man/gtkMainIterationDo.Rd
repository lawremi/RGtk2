\alias{gtkMainIterationDo}
\name{gtkMainIterationDo}
\title{gtkMainIterationDo}
\description{Runs a single iteration of the mainloop. If no events are available either
return or block dependent on the value of \code{blocking}.}
\usage{gtkMainIterationDo(blocking = TRUE)}
\arguments{\item{\verb{blocking}}{\code{TRUE} if you want GTK+ to block if no events are pending.}}
\value{[logical] \code{TRUE} if \code{\link{gtkMainQuit}} has been called for the innermost mainloop.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
