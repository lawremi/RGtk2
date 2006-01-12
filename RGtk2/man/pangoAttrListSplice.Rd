\alias{pangoAttrListSplice}
\name{pangoAttrListSplice}
\title{pangoAttrListSplice}
\description{This function splices attribute list \code{other} into \code{list}.
This operation is equivalent to stretching every attribute
that applies at position \code{pos} in \code{list} by an amount \code{len},
and then calling \code{\link{pangoAttrListChange}} with a copy
of each attribute in \code{other} in sequence (offset in position by \code{pos}).}
\usage{pangoAttrListSplice(object, other, pos, len)}
\arguments{
\item{\code{object}}{[\code{\link{PangoAttrList}}]  a \code{\link{PangoAttrList}}}
\item{\code{other}}{[\code{\link{PangoAttrList}}]  another \code{\link{PangoAttrList}}}
\item{\code{pos}}{[integer]  the position in \code{list} at which to insert \code{other}}
\item{\code{len}}{[integer]  the length of the spliced segment. (Note that this
      must be specified since the attributes in \code{other}
      may only be present at some subsection of this range)}
}
\details{This operation proves useful for, for instance, inserting
a preedit string in the middle of an edit buffer.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
