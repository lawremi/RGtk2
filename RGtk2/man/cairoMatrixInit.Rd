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
\item{\verb{xx}}{[numeric]  xx component of the affine transformation}
\item{\verb{yx}}{[numeric]  yx component of the affine transformation}
\item{\verb{xy}}{[numeric]  xy component of the affine transformation}
\item{\verb{yy}}{[numeric]  yy component of the affine transformation}
\item{\verb{x0}}{[numeric]  X translation component of the affine transformation}
\item{\verb{y0}}{[numeric]  Y translation component of the affine transformation}
}
\value{
A list containing the following elements:
\item{\verb{matrix}}{[\code{\link{CairoMatrix}}]  a \code{\link{CairoMatrix}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
