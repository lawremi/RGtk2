\alias{gdkVisualGetBestWithDepth}
\name{gdkVisualGetBestWithDepth}
\title{gdkVisualGetBestWithDepth}
\description{Get the best visual with depth \code{depth} for the default GDK screen.
Color visuals and visuals with mutable colormaps are preferred
over grayscale or fixed-colormap visuals. \code{NULL} may be returned if no visual supports \code{depth}.}
\usage{gdkVisualGetBestWithDepth(depth)}
\arguments{\item{\code{depth}}{[integer]  a bit depth}}
\value{[\code{\link{GdkVisual}}]  best visual for the given depth}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
