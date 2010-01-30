\alias{atkHyperlinkGetObject}
\name{atkHyperlinkGetObject}
\title{atkHyperlinkGetObject}
\description{Returns the item associated with this hyperlinks nth anchor.
For instance, the returned \verb{\link{AtkObject}} will implement \verb{\link{AtkText}}
if \code{link.} is a text hyperlink, \verb{\link{AtkImage}} if \code{link.} is an image
hyperlink etc. }
\usage{atkHyperlinkGetObject(object, i)}
\arguments{
\item{\verb{object}}{[\verb{\link{AtkHyperlink}}]  an \verb{\link{AtkHyperlink}}}
\item{\verb{i}}{[integer]  a (zero-index) integer specifying the desired anchor}
}
\details{Multiple anchors are primarily used by client-side image maps.  }
\value{[\verb{\link{AtkObject}}]  an \verb{\link{AtkObject}} associated with this hyperlinks i-th anchor}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
