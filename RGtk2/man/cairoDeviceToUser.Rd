\alias{cairoDeviceToUser}
\name{cairoDeviceToUser}
\title{cairoDeviceToUser}
\description{Transform a coordinate from device space to user space by
multiplying the given point by the inverse of the current
transformation matrix (CTM).}
\usage{cairoDeviceToUser(cr, x, y)}
\arguments{
\item{\code{cr}}{[\code{\link{cairo_t}}]  a cairo}
\item{\code{x}}{[numeric]  X value of coordinate (in/out parameter)}
\item{\code{y}}{[numeric]  Y value of coordinate (in/out parameter)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
