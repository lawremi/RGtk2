\alias{cairo-transformations}
\name{cairo-transformations}
\title{Transformations}
\description{Manipulating the current transformation matrix}
\section{Methods and Functions}{
\code{\link{cairoTranslate}(cr, tx, ty)}\cr
\code{\link{cairoScale}(cr, sx, sy)}\cr
\code{\link{cairoRotate}(cr, angle)}\cr
\code{\link{cairoTransform}(cr, matrix)}\cr
\code{\link{cairoSetMatrix}(cr, matrix)}\cr
\code{\link{cairoGetMatrix}(cr, matrix)}\cr
\code{\link{cairoIdentityMatrix}(cr)}\cr
\code{\link{cairoUserToDevice}(cr, x, y)}\cr
\code{\link{cairoUserToDeviceDistance}(cr, dx, dy)}\cr
\code{\link{cairoDeviceToUser}(cr, x, y)}\cr
\code{\link{cairoDeviceToUserDistance}(cr, dx, dy)}\cr
}
\section{Detailed Description}{The current transformation matrix, \dfn{ctm}, is a
two-dimensional affine transformation that maps all coordinates and other
drawing instruments from the \dfn{user space} into the
surface's canonical coordinate system, also known as the \dfn{device
space}.}
\references{\url{https://www.cairographics.org/manual/cairo-Transformations.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
