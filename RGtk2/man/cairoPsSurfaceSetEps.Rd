\alias{cairoPsSurfaceSetEps}
\name{cairoPsSurfaceSetEps}
\title{cairoPsSurfaceSetEps}
\description{If \code{eps} is \code{TRUE}, the PostScript surface will output Encapsulated
PostScript.}
\usage{cairoPsSurfaceSetEps(surface, eps)}
\arguments{
\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a PostScript \code{\link{CairoSurface}}}
\item{\verb{eps}}{[logical] \code{TRUE} to output EPS format PostScript}
}
\details{This function should only be called before any drawing operations
have been performed on the current page. The simplest way to do
this is to call this function immediately after creating the
surface. An Encapsulated PostScript file should never contain more
than one page.  
  Since 1.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
