\alias{gdkVisualGetBestWithDepth}
\name{gdkVisualGetBestWithDepth}
\title{gdkVisualGetBestWithDepth}
\description{Get the best visual with depth \code{depth} for the default GDK screen.
Color visuals and visuals with mutable colormaps are preferred
over grayscale or fixed-colormap visuals. The return value should not
be freed. \code{NULL} may be returned if no visual supports \code{depth}.}
\usage{gdkVisualGetBestWithDepth(depth)}
\arguments{\item{\verb{depth}}{a bit depth}}
\value{[\code{\link{GdkVisual}}] best visual for the given depth. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
