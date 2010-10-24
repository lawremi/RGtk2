\alias{cairoDeviceToUser}
\name{cairoDeviceToUser}
\title{cairoDeviceToUser}
\description{Transform a coordinate from device space to user space by
multiplying the given point by the inverse of the current
transformation matrix (CTM).}
\usage{cairoDeviceToUser(cr, x, y)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo}
\item{\verb{x}}{[numeric]  X value of coordinate (in/out parameter)}
\item{\verb{y}}{[numeric]  Y value of coordinate (in/out parameter)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
