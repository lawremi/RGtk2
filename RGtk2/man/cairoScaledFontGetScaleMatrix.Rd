\alias{cairoScaledFontGetScaleMatrix}
\name{cairoScaledFontGetScaleMatrix}
\title{cairoScaledFontGetScaleMatrix}
\description{Stores the scale matrix of \code{scaled.font} into \code{matrix}.
The scale matrix is product of the font matrix and the ctm
associated with the scaled font, and hence is the matrix mapping from
font space to device space.}
\usage{cairoScaledFontGetScaleMatrix(scaled.font)}
\arguments{\item{\verb{scaled.font}}{[\code{\link{CairoScaledFont}}]  a \code{\link{CairoScaledFont}}}}
\details{  Since 1.8}
\value{
A list containing the following elements:
\item{\verb{scale.matrix}}{[\code{\link{CairoMatrix}}]  return value for the matrix}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
