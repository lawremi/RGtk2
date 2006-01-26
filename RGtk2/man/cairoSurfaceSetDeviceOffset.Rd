\alias{cairoSurfaceSetDeviceOffset}
\name{cairoSurfaceSetDeviceOffset}
\title{cairoSurfaceSetDeviceOffset}
\description{Sets an offset that is added to the device coordinates determined
by the CTM when drawing to \code{surface}. One use case for this function
is when we want to create a \code{\link{CairoSurface}} that redirects drawing
for a portion of an onscreen surface to an offscreen surface in a
way that is completely invisible to the user of the cairo
API. Setting a transformation via \code{\link{cairoTranslate}} isn't
sufficient to do this, since functions like
\code{\link{cairoDeviceToUser}} will expose the hidden offset.}
\usage{cairoSurfaceSetDeviceOffset(surface, x.offset, y.offset)}
\arguments{
\item{\code{surface}}{[\code{\link{CairoSurface}}]  a \code{\link{CairoSurface}}}
\item{\code{x.offset}}{[numeric]  the offset in the X direction, in device units}
\item{\code{y.offset}}{[numeric]  the offset in the Y direction, in device units}
}
\details{Note that the offset only affects drawing to the surface, not using
the surface in a surface pattern.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
