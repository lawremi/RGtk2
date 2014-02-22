\alias{pangoAttrListInsert}
\name{pangoAttrListInsert}
\title{pangoAttrListInsert}
\description{Insert the given attribute into the \code{\link{PangoAttrList}}. It will
be inserted after all other attributes with a matching
\code{start.index}.}
\usage{pangoAttrListInsert(object, attr)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoAttrList}}]  a \code{\link{PangoAttrList}}}
\item{\verb{attr}}{[\code{\link{PangoAttribute}}]  the attribute to insert. Ownership of this value is
       assumed by the list.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
