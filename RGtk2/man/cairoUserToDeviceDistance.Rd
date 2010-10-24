\alias{cairoUserToDeviceDistance}
\name{cairoUserToDeviceDistance}
\title{cairoUserToDeviceDistance}
\description{Transform a distance vector from user space to device space. This
function is similar to \code{\link{cairoUserToDevice}} except that the
translation components of the CTM will be ignored when transforming
(\code{dx},\code{dy}).}
\usage{cairoUserToDeviceDistance(cr, dx, dy)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{dx}}{[numeric]  X component of a distance vector (in/out parameter)}
\item{\verb{dy}}{[numeric]  Y component of a distance vector (in/out parameter)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
