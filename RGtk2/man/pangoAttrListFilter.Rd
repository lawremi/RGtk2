\alias{pangoAttrListFilter}
\name{pangoAttrListFilter}
\title{pangoAttrListFilter}
\description{Given a \code{\link{PangoAttrList}} and callback function, removes any elements
of \code{list} for which \code{func} returns \code{TRUE} and inserts them into
a new list.}
\usage{pangoAttrListFilter(object, func, data)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoAttrList}}]  a \code{\link{PangoAttrList}}}
\item{\verb{func}}{[\code{\link{PangoAttrFilterFunc}}]  callback function; returns \code{TRUE} if an attribute
       should be filtered out.}
\item{\verb{data}}{[R object]  Data to be passed to \code{func}}
}
\details{  Since 1.2}
\value{[\code{\link{PangoAttrList}}]  the new \code{\link{PangoAttrList}} or \code{NULL} if
 no attributes of the given types were found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
