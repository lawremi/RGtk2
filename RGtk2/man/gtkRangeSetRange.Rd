\alias{gtkRangeSetRange}
\name{gtkRangeSetRange}
\title{gtkRangeSetRange}
\description{Sets the allowable values in the \code{\link{GtkRange}}, and clamps the range
value to be between \code{min} and \code{max}. (If the range has a non-zero
page size, it is clamped between \code{min} and \code{max} - page-size.)}
\usage{gtkRangeSetRange(object, min, max)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRange}}}
\item{\verb{min}}{minimum range value}
\item{\verb{max}}{maximum range value}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
