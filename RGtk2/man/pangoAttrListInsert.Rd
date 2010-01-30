\alias{pangoAttrListInsert}
\name{pangoAttrListInsert}
\title{pangoAttrListInsert}
\description{Insert the given attribute into the \verb{\link{PangoAttrList}}. It will
be inserted after all other attributes with a matching
\code{start.index}.}
\usage{pangoAttrListInsert(object, attr)}
\arguments{
\item{\verb{object}}{[\verb{\link{PangoAttrList}}]  a \verb{\link{PangoAttrList}}}
\item{\verb{attr}}{[\verb{\link{PangoAttribute}}]  the attribute to insert. Ownership of this value is
       assumed by the list.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
