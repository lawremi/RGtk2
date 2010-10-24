\alias{cairoSurfaceGetUserData}
\name{cairoSurfaceGetUserData}
\title{cairoSurfaceGetUserData}
\description{Return user data previously attached to \code{surface} using the specified
key.  If no user data has been attached with the given key this
function returns \code{NULL}.}
\usage{cairoSurfaceGetUserData(surface, key)}
\arguments{
\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a \code{\link{CairoSurface}}}
\item{\verb{key}}{[\code{\link{CairoUserDataKey}}]  the the \code{\link{CairoUserDataKey}} the user data was
attached to}
}
\value{[R object]  the user data previously attached or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
