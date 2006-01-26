\alias{cairoMatrixInitTranslate}
\name{cairoMatrixInitTranslate}
\title{cairoMatrixInitTranslate}
\description{Initializes \code{matrix} to a transformation that translates by \code{tx} and
\code{ty} in the X and Y dimensions, respectively.}
\usage{cairoMatrixInitTranslate(tx, ty)}
\arguments{
\item{\code{tx}}{[numeric]  amount to translate in the X direction}
\item{\code{ty}}{[numeric]  amount to translate in the Y direction}
}
\value{
A list containing the following elements:
\item{\code{matrix}}{[\code{\link{CairoMatrix}}]  a cairo_matrix_t}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
