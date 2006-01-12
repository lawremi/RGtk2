\alias{cairoSurfaceSetUserData}
\name{cairoSurfaceSetUserData}
\title{cairoSurfaceSetUserData}
\description{Attach user data to \code{surface}.  To remove user data from a surface,
call this function with the key that was used to set it and \code{NULL}
for \code{data}.}
\usage{cairoSurfaceSetUserData(surface, key, user.data, destroy)}
\arguments{
\item{\code{surface}}{[\code{\link{cairo_surface_t}}]  a \code{\link{cairo_surface_t}}}
\item{\code{key}}{[\code{\link{cairo_user_data_key_t}}]  the a \code{\link{cairo_user_data_key_t}} to attach the user data to}
\item{\code{user.data}}{[R object]  the user data to attach to the surface}
\item{\code{destroy}}{[cairo_destroy_func_t]  a \code{cairo_destroy_func_t} which will be called when the
surface is destroyed or when new user data is attached using the
same key.}
}
\value{[\code{\link{cairo_status_t}}]  \code{CAIRO_STATUS_SUCCESS} or \code{CAIRO_STATUS_NO_MEMORY} if a
slot could not be allocated for the user data.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
