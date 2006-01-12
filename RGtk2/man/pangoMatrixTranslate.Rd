\alias{pangoMatrixTranslate}
\name{pangoMatrixTranslate}
\title{pangoMatrixTranslate}
\description{Changes the transformation represented by \code{matrix} to be the
transformation given by first translating by (\code{tx}, \code{ty})
then applying the original transformation.}
\usage{pangoMatrixTranslate(object, tx, ty)}
\arguments{
\item{\code{object}}{[\code{\link{PangoMatrix}}]  a \code{\link{PangoMatrix}}}
\item{\code{tx}}{[numeric]  amount to translate in the X direction}
\item{\code{ty}}{[numeric]  amount to translate in the Y direction}
}
\details{  Since  1.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
