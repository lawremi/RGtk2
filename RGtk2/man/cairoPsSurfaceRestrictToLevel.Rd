\alias{cairoPsSurfaceRestrictToLevel}
\name{cairoPsSurfaceRestrictToLevel}
\title{cairoPsSurfaceRestrictToLevel}
\description{Restricts the generated PostSript file to \code{level}. See
\code{\link{cairoPsGetLevels}} for a list of available level values that
can be used here.}
\usage{cairoPsSurfaceRestrictToLevel(surface, level)}
\arguments{
\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a PostScript \code{\link{CairoSurface}}}
\item{\verb{level}}{[\code{\link{CairoPsLevel}}]  PostScript level}
}
\details{This function should only be called before any drawing operations
have been performed on the given surface. The simplest way to do
this is to call this function immediately after creating the
surface.  
  Since 1.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
