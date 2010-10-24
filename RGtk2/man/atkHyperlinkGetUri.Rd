\alias{atkHyperlinkGetUri}
\name{atkHyperlinkGetUri}
\title{atkHyperlinkGetUri}
\description{Get a the URI associated with the anchor specified 
by \code{i} of \code{link.}. }
\usage{atkHyperlinkGetUri(object, i)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkHyperlink}}]  an \code{\link{AtkHyperlink}}}
\item{\verb{i}}{[integer]  a (zero-index) integer specifying the desired anchor}
}
\details{Multiple anchors are primarily used by client-side image maps.  }
\value{[character]  a string specifying the URI }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
