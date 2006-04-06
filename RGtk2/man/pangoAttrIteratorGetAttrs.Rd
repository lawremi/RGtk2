\alias{pangoAttrIteratorGetAttrs}
\name{pangoAttrIteratorGetAttrs}
\title{pangoAttrIteratorGetAttrs}
\description{Gets a list of all attributes at the current position of the
iterator.}
\usage{pangoAttrIteratorGetAttrs(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoAttrIterator}}]  a \code{\link{PangoAttrIterator}}}}
\value{[list]  a list of all attributes for the current range.
  To free this value, call \code{pango\Attribute\Destroy()} on
  each value and \code{g\Slist\Free()} on the list.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
