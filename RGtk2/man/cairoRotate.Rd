\alias{cairoRotate}
\name{cairoRotate}
\title{cairoRotate}
\description{Modifies the current transformation matrix (CTM) by rotating the
user-space axes by \code{angle} radians. The rotation of the axes takes
places after any existing transformation of user space. The
rotation direction for positive angles is from the positive X axis
toward the positive Y axis.}
\usage{cairoRotate(cr, angle)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{angle}}{[numeric]  angle (in radians) by which the user-space axes will be
rotated}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
