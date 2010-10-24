\alias{cairoMatrixTranslate}
\name{cairoMatrixTranslate}
\title{cairoMatrixTranslate}
\description{Applies a translation by \code{tx}, \code{ty} to the transformation in
\code{matrix}. The effect of the new transformation is to first translate
the coordinates by \code{tx} and \code{ty}, then apply the original transformation
to the coordinates.}
\usage{cairoMatrixTranslate(matrix, tx, ty)}
\arguments{
\item{\verb{matrix}}{[\code{\link{CairoMatrix}}]  a \code{\link{CairoMatrix}}}
\item{\verb{tx}}{[numeric]  amount to translate in the X direction}
\item{\verb{ty}}{[numeric]  amount to translate in the Y direction}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
