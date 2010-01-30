\alias{pangoAttrListCopy}
\name{pangoAttrListCopy}
\title{pangoAttrListCopy}
\description{Copy \code{list} and return an identical new list.}
\usage{pangoAttrListCopy(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoAttrList}}]  a \verb{\link{PangoAttrList}}, may be \code{NULL}}}
\value{[\verb{\link{PangoAttrList}}]  the newly allocated \verb{\link{PangoAttrList}}, with a
              reference count of one.
              Returns \code{NULL} if \code{list} was \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
