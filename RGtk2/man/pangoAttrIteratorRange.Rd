\alias{pangoAttrIteratorRange}
\name{pangoAttrIteratorRange}
\title{pangoAttrIteratorRange}
\description{Get the range of the current segment. Note that the
stored return values are signed, not unsigned like
the values in \code{\link{PangoAttribute}}. To deal with this API
oversight, stored return values that wouldn't fit into
a signed integer are clamped to \code{G_MAXINT}.}
\usage{pangoAttrIteratorRange(object)}
\arguments{\item{\verb{object}}{a \code{\link{PangoAttrIterator}}}}
\value{
A list containing the following elements:
\item{\verb{start}}{location to store the start of the range}
\item{\verb{end}}{location to store the end of the range}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
