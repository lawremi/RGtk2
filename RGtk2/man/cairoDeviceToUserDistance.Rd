\alias{cairoDeviceToUserDistance}
\name{cairoDeviceToUserDistance}
\title{cairoDeviceToUserDistance}
\description{Transform a distance vector from device space to user space. This
function is similar to \code{\link{cairoDeviceToUser}} except that the
translation components of the inverse CTM will be ignored when
transforming (\code{dx},\code{dy}).}
\usage{cairoDeviceToUserDistance(cr, dx, dy)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\code{dx}}{[numeric]  X component of a distance vector (in/out parameter)}
\item{\code{dy}}{[numeric]  Y component of a distance vector (in/out parameter)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
