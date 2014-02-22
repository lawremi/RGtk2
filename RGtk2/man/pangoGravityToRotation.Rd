\alias{pangoGravityToRotation}
\name{pangoGravityToRotation}
\title{pangoGravityToRotation}
\description{Converts a \code{\link{PangoGravity}} value to its natural rotation in radians.
\code{gravity} should not be \code{PANGO_GRAVITY_AUTO}.}
\usage{pangoGravityToRotation(base.gravity)}
\arguments{\item{\verb{base.gravity}}{[\code{\link{PangoGravity}}]  gravity to query}}
\details{Note that \code{\link{pangoMatrixRotate}} takes angle in degrees, not radians.
So, to call \code{\link{pangoMatrixRotate}} with the output of this function
you should multiply it by (180. / G_PI).  
  Since 1.16}
\value{[numeric]  the rotation value corresponding to \code{gravity}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
