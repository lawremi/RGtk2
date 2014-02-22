\alias{pangoAttrListSplice}
\name{pangoAttrListSplice}
\title{pangoAttrListSplice}
\description{This function opens up a hole in \code{list}, fills it in with attributes from
the left, and then merges \code{other} on top of the hole.}
\usage{pangoAttrListSplice(object, other, pos, len)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoAttrList}}]  a \code{\link{PangoAttrList}}}
\item{\verb{other}}{[\code{\link{PangoAttrList}}]  another \code{\link{PangoAttrList}}}
\item{\verb{pos}}{[integer]  the position in \code{list} at which to insert \code{other}}
\item{\verb{len}}{[integer]  the length of the spliced segment. (Note that this
      must be specified since the attributes in \code{other}
      may only be present at some subsection of this range)}
}
\details{This operation is equivalent to stretching every attribute
that applies at position \code{pos} in \code{list} by an amount \code{len},
and then calling \code{\link{pangoAttrListChange}} with a copy
of each attribute in \code{other} in sequence (offset in position by \code{pos}).
  
This operation proves useful for, for instance, inserting
a pre-edit string in the middle of an edit buffer.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
