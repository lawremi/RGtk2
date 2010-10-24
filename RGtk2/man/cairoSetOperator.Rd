\alias{cairoSetOperator}
\name{cairoSetOperator}
\title{cairoSetOperator}
\description{Sets the compositing operator to be used for all drawing
operations. See \code{\link{CairoOperator}} for details on the semantics of
each available compositing operator.}
\usage{cairoSetOperator(cr, op)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}
\item{\verb{op}}{[\code{\link{CairoOperator}}]  a compositing operator, specified as a \code{\link{CairoOperator}}}
}
\details{The default operator is \code{CAIRO_OPERATOR_OVER}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
