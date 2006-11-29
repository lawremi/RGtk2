\alias{gtkMainIteration}
\name{gtkMainIteration}
\title{gtkMainIteration}
\description{Runs a single iteration of the mainloop. If no events are waiting to be
processed GTK+ will block until the next event is noticed. If you don't
want to block look at \code{\link{gtkMainIterationDo}} or check if any events are
pending with \code{\link{gtkEventsPending}} first.}
\usage{gtkMainIteration()}
\value{[logical] \code{TRUE} if \code{\link{gtkMainQuit}} has been called for the innermost mainloop.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
