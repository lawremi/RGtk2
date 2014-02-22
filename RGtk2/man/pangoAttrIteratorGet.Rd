\alias{pangoAttrIteratorGet}
\name{pangoAttrIteratorGet}
\title{pangoAttrIteratorGet}
\description{Find the current attribute of a particular type at the iterator
location. When multiple attributes of the same type overlap,
the attribute whose range starts closest to the current location
is used.}
\usage{pangoAttrIteratorGet(object, type)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoAttrIterator}}]  a \code{\link{PangoAttrIterator}}}
\item{\verb{type}}{[\code{\link{PangoAttrType}}]  the type of attribute to find.}
}
\value{[\code{\link{PangoAttribute}}]  the current attribute of the given type, or \code{NULL}
              if no attribute of that type applies to the current
              location.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
