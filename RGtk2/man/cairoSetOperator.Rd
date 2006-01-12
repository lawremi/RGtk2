\alias{cairoSetOperator}
\name{cairoSetOperator}
\title{cairoSetOperator}
\description{Sets the compositing operator to be used for all drawing
operations. See \code{\link{cairo_operator_t}} for details on the semantics of
each available compositing operator.}
\usage{cairoSetOperator(cr, op)}
\arguments{
\item{\code{cr}}{[\code{\link{cairo_t}}]  a \code{\link{cairo_t}}}
\item{\code{op}}{[\code{\link{cairo_operator_t}}]  a compositing operator, specified as a \code{\link{cairo_operator_t}}}
}
\details{XXX: I'd also like to direct the reader's attention to some
(not-yet-written) section on cairo's imaging model. How would I do
that if such a section existed? (cworth).  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
