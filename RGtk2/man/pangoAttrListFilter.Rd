\alias{pangoAttrListFilter}
\name{pangoAttrListFilter}
\title{pangoAttrListFilter}
\description{Given a \code{\link{PangoAttrList}} and callback function, removes any elements
of \code{list} for which \code{func} returns \code{TRUE} and inserts them into
a new list.}
\usage{pangoAttrListFilter(object, func, data)}
\arguments{
\item{\code{object}}{[\code{\link{PangoAttrList}}]  a \code{\link{PangoAttrList}}}
\item{\code{func}}{[\code{\link{PangoAttrFilterFunc}}]  callback function; returns \code{TRUE} if an atttribute
       should be filtered out.}
\item{\code{data}}{[R object]  Data to be passed to \code{func}}
}
\value{[\code{\link{PangoAttrList}}]  a newly allocated \code{\link{PangoAttrList}} or \code{NULL} if
 no attributes of the given types were found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
