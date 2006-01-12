\alias{cairoSurfaceGetUserData}
\name{cairoSurfaceGetUserData}
\title{cairoSurfaceGetUserData}
\description{Return user data previously attached to \code{surface} using the specified
key.  If no user data has been attached with the given key this
function returns \code{NULL}.}
\usage{cairoSurfaceGetUserData(surface, key)}
\arguments{
\item{\code{surface}}{[\code{\link{cairo_surface_t}}]  a \code{\link{cairo_surface_t}}}
\item{\code{key}}{[\code{\link{cairo_user_data_key_t}}]  the the \code{\link{cairo_user_data_key_t}} the user data was
attached to}
}
\value{[R object]  the user data previously attached or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
