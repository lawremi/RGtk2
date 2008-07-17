\alias{cairoMatrixInit}
\name{cairoMatrixInit}
\title{cairoMatrixInit}
\description{Sets \code{matrix} to be the affine transformation given by
\code{xx}, \code{yx}, \code{xy}, \code{yy}, \code{x0}, \code{y0}. The transformation is given
by:
\preformatted{ x_new = xx * x + xy * y + x0;
 y_new = yx * x + yy * y + y0;
}}
\usage{cairoMatrixInit(xx, yx, xy, yy, x0, y0)}
\arguments{
\item{\code{xx}}{[numeric]  xx component of the affine transformation}
\item{\code{yx}}{[numeric]  yx component of the affine transformation}
\item{\code{xy}}{[numeric]  xy component of the affine transformation}
\item{\code{yy}}{[numeric]  yy component of the affine transformation}
\item{\code{x0}}{[numeric]  X translation component of the affine transformation}
\item{\code{y0}}{[numeric]  Y translation component of the affine transformation}
}
\value{
A list containing the following elements:
\item{\code{matrix}}{[\code{\link{CairoMatrix}}]  a \code{\link{CairoMatrix}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
