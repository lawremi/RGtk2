\alias{cairoSurfaceCreateSimilar}
\name{cairoSurfaceCreateSimilar}
\title{cairoSurfaceCreateSimilar}
\description{Create a new surface that is as compatible as possible with an
existing surface. The new surface will use the same backend as
\code{other} unless that is not possible for some reason.}
\usage{cairoSurfaceCreateSimilar(other, content, width, height)}
\arguments{
\item{\code{other}}{[\code{\link{cairo_surface_t}}]  an existing surface used to select the backend of the new surface}
\item{\code{content}}{[\code{\link{cairo_content_t}}]  the content for the new surface}
\item{\code{width}}{[integer]  width of the new surface, (in device-space units)}
\item{\code{height}}{[integer]  height of the new surface (in device-space units)}
}
\value{[\code{\link{cairo_surface_t}}]  a pointer to the newly allocated surface. The caller
owns the surface and should call cairo_surface_destroy when done
with it.

This function always returns a valid pointer, but it will return a
pointer to a "nil" surface if \code{other} is already in an error state
or any other error occurs.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
