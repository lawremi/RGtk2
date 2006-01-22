\alias{cairo-cairo-matrix-t}
\alias{cairo_matrix_t}
\name{cairo-cairo-matrix-t}
\title{cairo_matrix_t}
\description{Generic matrix operations}
\section{Methods and Functions}{
\link{cairoMatrixInit}(xx, yx, xy, yy, x0, y0)
\link{cairoMatrixInitIdentity}()
\link{cairoMatrixInitTranslate}(tx, ty)
\link{cairoMatrixInitScale}(sx, sy)
\link{cairoMatrixInitRotate}(radians)
\link{cairoMatrixTranslate}(matrix, tx, ty)
\link{cairoMatrixScale}(matrix, sx, sy)
\link{cairoMatrixRotate}(matrix, radians)
\link{cairoMatrixInvert}(matrix)
\link{cairoMatrixMultiply}(result, a, b)
\link{cairoMatrixTransformDistance}(matrix, dx, dy)
\link{cairoMatrixTransformPoint}(matrix, x, y)
}
\section{Detailed Description}{    \code{\link{cairo_matrix_t}} is used throughout cairo to convert between different
    coordinate spaces.  A \code{\link{cairo_matrix_t}} holds an affine transformation,
    such as a scale, rotation, shear, or a combination of these.
    The transformation of a point (\code{x},\code{y})
    is given by:
    \preformatted{    x_new = xx * x + xy * y + x0;
    y_new = yx * x + yy * y + y0;
  }  
    The current transformation matrix of a \code{\link{cairo_t}}, represented as a
    \code{\link{cairo_matrix_t}}, defines the transformation from user-space
    coordinates to device-space coordinates. See \code{\link{cairoGetMatrix}} and
    \code{\link{cairoSetMatrix}}.
  }
\section{Structures}{\describe{\item{\code{cairo_matrix_t}}{
A \code{\link{cairo_matrix_t}} holds an affine transformation, such as a scale,
rotation, shear, or a combination of those. The transformation of
a point (x, y) is given by:
\preformatted{    x_new = xx * x + xy * y + x0;
    y_new = yx * x + yy * y + y0;}  

\describe{
\item{\code{xx}}{[numeric]  xx component of the affine transformation}
\item{\code{yx}}{[numeric]  yx component of the affine transformation}
\item{\code{xy}}{[numeric]  xy component of the affine transformation}
\item{\code{yy}}{[numeric]  yy component of the affine transformation}
\item{\code{x0}}{[numeric]  X translation component of the affine transformation}
\item{\code{y0}}{[numeric]  Y translation component of the affine transformation}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/cairo/cairo-cairo-matrix-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
