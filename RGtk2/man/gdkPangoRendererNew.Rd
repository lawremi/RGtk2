\alias{gdkPangoRendererNew}
\name{gdkPangoRendererNew}
\title{gdkPangoRendererNew}
\description{Creates a new \code{\link{PangoRenderer}} for \code{screen}. Normally you can use the
results of \code{\link{gdkPangoRendererGetDefault}} rather than creating a new
renderer.}
\usage{gdkPangoRendererNew(screen)}
\arguments{\item{\code{screen}}{[\code{\link{GdkScreen}}]  a \code{\link{GdkScreen}}}}
\details{  Since  2.6}
\value{[\code{\link{PangoRenderer}}]  a newly created \code{\link{PangoRenderer}}. Free with \code{g\Object\Unref()}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
