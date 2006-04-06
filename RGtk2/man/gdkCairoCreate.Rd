\alias{gdkCairoCreate}
\name{gdkCairoCreate}
\title{gdkCairoCreate}
\description{Creates a Cairo context for drawing to \code{drawable}.}
\usage{gdkCairoCreate(drawable)}
\arguments{\item{\code{drawable}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}}}}
\details{  Since  2.8}
\value{[\code{\link{Cairo}}]  A newly created Cairo context. Free with
 \code{cairo\Destroy()} when you are done drawing.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
