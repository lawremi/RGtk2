\alias{atkHyperlinkGetObject}
\name{atkHyperlinkGetObject}
\title{atkHyperlinkGetObject}
\description{Returns the item associated with this hyperlinks nth anchor.
For instance, the returned \code{\link{AtkObject}} will implement \code{\link{AtkText}}
if \code{link.} is a text hyperlink, \code{\link{AtkImage}} if \code{link.} is an image
hyperlink etc. }
\usage{atkHyperlinkGetObject(object, i)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkHyperlink}}]  an \code{\link{AtkHyperlink}}}
\item{\verb{i}}{[integer]  a (zero-index) integer specifying the desired anchor}
}
\details{Multiple anchors are primarily used by client-side image maps.  }
\value{[\code{\link{AtkObject}}]  an \code{\link{AtkObject}} associated with this hyperlinks i-th anchor}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
