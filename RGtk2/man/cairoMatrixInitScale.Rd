\alias{cairoMatrixInitScale}
\name{cairoMatrixInitScale}
\title{cairoMatrixInitScale}
\description{Initializes \code{matrix} to a transformation that scales by \code{sx} and \code{sy}
in the X and Y dimensions, respectively.}
\usage{cairoMatrixInitScale(sx, sy)}
\arguments{
\item{\code{sx}}{[numeric]  scale factor in the X direction}
\item{\code{sy}}{[numeric]  scale factor in the Y direction}
}
\value{
A list containing the following elements:
\item{\code{matrix}}{[\code{\link{CairoMatrix}}]  a cairo\_matrix\_t}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
