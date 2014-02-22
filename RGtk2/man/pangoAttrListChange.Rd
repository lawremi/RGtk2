\alias{pangoAttrListChange}
\name{pangoAttrListChange}
\title{pangoAttrListChange}
\description{Insert the given attribute into the \code{\link{PangoAttrList}}. It will
replace any attributes of the same type on that segment
and be merged with any adjoining attributes that are identical.}
\usage{pangoAttrListChange(object, attr)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoAttrList}}]  a \code{\link{PangoAttrList}}}
\item{\verb{attr}}{[\code{\link{PangoAttribute}}]  the attribute to insert. Ownership of this value is
       assumed by the list.}
}
\details{This function is slower than \code{\link{pangoAttrListInsert}} for
creating a attribute list in order (potentially much slower
for large lists). However, \code{\link{pangoAttrListInsert}} is not
suitable for continually changing a set of attributes
since it never removes or combines existing attributes.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
