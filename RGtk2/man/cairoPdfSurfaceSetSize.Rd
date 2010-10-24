\alias{cairoPdfSurfaceSetSize}
\name{cairoPdfSurfaceSetSize}
\title{cairoPdfSurfaceSetSize}
\description{Changes the size of a PDF surface for the current (and
subsequent) pages.}
\usage{cairoPdfSurfaceSetSize(surface, width.in.points, height.in.points)}
\arguments{
\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a PDF \code{\link{CairoSurface}}}
\item{\verb{width.in.points}}{[numeric]  new surface width, in points (1 point == 1/72.0 inch)}
\item{\verb{height.in.points}}{[numeric]  new surface height, in points (1 point == 1/72.0 inch)}
}
\details{This function should only be called before any drawing operations
have been performed on the current page. The simplest way to do
this is to call this function immediately after creating the
surface or immediately after completing a page with either
\code{\link{cairoShowPage}} or \code{\link{cairoCopyPage}}.  
  Since 1.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
