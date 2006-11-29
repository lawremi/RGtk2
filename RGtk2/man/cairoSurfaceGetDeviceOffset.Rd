\alias{cairoSurfaceGetDeviceOffset}
\name{cairoSurfaceGetDeviceOffset}
\title{cairoSurfaceGetDeviceOffset}
\description{This function returns the previous device offset set by
\code{\link{cairoSurfaceSetDeviceOffset}}.}
\usage{cairoSurfaceGetDeviceOffset(surface)}
\arguments{\item{\code{surface}}{[\code{\link{CairoSurface}}]  a \code{\link{CairoSurface}}}}
\details{  Since  1.2}
\value{
A list containing the following elements:
\item{\code{x.offset}}{[numeric]  the offset in the X direction, in device units}
\item{\code{y.offset}}{[numeric]  the offset in the Y direction, in device units}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
