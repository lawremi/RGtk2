\alias{cairo-cairo-matrix-t}
\alias{CairoMatrix}
\name{cairo-cairo-matrix-t}
\title{cairo\_matrix\_t}
\description{Generic matrix operations}
\section{Methods and Functions}{
\code{\link{cairoMatrixInit}(xx, yx, xy, yy, x0, y0)}\cr
\code{\link{cairoMatrixInitIdentity}()}\cr
\code{\link{cairoMatrixInitTranslate}(tx, ty)}\cr
\code{\link{cairoMatrixInitScale}(sx, sy)}\cr
\code{\link{cairoMatrixInitRotate}(radians)}\cr
\code{\link{cairoMatrixTranslate}(matrix, tx, ty)}\cr
\code{\link{cairoMatrixScale}(matrix, sx, sy)}\cr
\code{\link{cairoMatrixRotate}(matrix, radians)}\cr
\code{\link{cairoMatrixInvert}(matrix)}\cr
\code{\link{cairoMatrixMultiply}(result, a, b)}\cr
\code{\link{cairoMatrixTransformDistance}(matrix, dx, dy)}\cr
\code{\link{cairoMatrixTransformPoint}(matrix, x, y)}\cr
}
\section{Detailed Description}{    \code{\link{CairoMatrix}} is used throughout cairo to convert between different
    coordinate spaces.  A \code{\link{CairoMatrix}} holds an affine transformation,
    such as a scale, rotation, shear, or a combination of these.
    The transformation of a point (\code{x},\code{y})
    is given by:
    \preformatted{    x\_new = xx * x + xy * y + x0;
    y\_new = yx * x + yy * y + y0;
  }  
    The current transformation matrix of a \code{\link{Cairo}}, represented as a
    \code{\link{CairoMatrix}}, defines the transformation from user-space
    coordinates to device-space coordinates. See \code{\link{cairoGetMatrix}} and
    \code{\link{cairoSetMatrix}}.
  }
\section{Structures}{\describe{\item{\code{CairoMatrix}}{
A \code{\link{CairoMatrix}} holds an affine transformation, such as a scale,
rotation, shear, or a combination of those. The transformation of
a point (x, y) is given by:
\preformatted{    x\_new = xx * x + xy * y + x0;
    y\_new = yx * x + yy * y + y0;}  

\describe{
\item{\code{xx}}{[numeric]  xx component of the affine transformation}
\item{\code{yx}}{[numeric]  yx component of the affine transformation}
\item{\code{xy}}{[numeric]  xy component of the affine transformation}
\item{\code{yy}}{[numeric]  yy component of the affine transformation}
\item{\code{x0}}{[numeric]  X translation component of the affine transformation}
\item{\code{y0}}{[numeric]  Y translation component of the affine transformation}
}

}}}
\references{\url{http://www.cairographics.org/manual/cairo-cairo-matrix-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
