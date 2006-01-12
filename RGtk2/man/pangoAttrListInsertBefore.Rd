\alias{pangoAttrListInsertBefore}
\name{pangoAttrListInsertBefore}
\title{pangoAttrListInsertBefore}
\description{Insert the given attribute into the \code{\link{PangoAttrList}}. It will
be inserted before all other attributes with a matching
\code{start.index}.}
\usage{pangoAttrListInsertBefore(object, attr)}
\arguments{
\item{\code{object}}{[\code{\link{PangoAttrList}}]  a \code{\link{PangoAttrList}}}
\item{\code{attr}}{[\code{\link{PangoAttribute}}]  the attribute to insert. Ownership of this value is
       assumed by the list.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
