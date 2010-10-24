\alias{cairoUserToDevice}
\name{cairoUserToDevice}
\title{cairoUserToDevice}
\description{Transform a coordinate from user space to device space by
multiplying the given point by the current transformation matrix
(CTM).}
\usage{cairoUserToDevice(cr, x, y)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{x}}{[numeric]  X value of coordinate (in/out parameter)}
\item{\verb{y}}{[numeric]  Y value of coordinate (in/out parameter)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
