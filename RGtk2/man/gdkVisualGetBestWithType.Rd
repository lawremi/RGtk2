\alias{gdkVisualGetBestWithType}
\name{gdkVisualGetBestWithType}
\title{gdkVisualGetBestWithType}
\description{Get the best visual of the given \code{visual.type} for the default GDK screen.
Visuals with higher color depths are considered better. \code{NULL} may be returned if no visual has type
\code{visual.type}.}
\usage{gdkVisualGetBestWithType(visual.type)}
\arguments{\item{\verb{visual.type}}{[\code{\link{GdkVisualType}}]  a visual type}}
\value{[\verb{\link{GdkVisual}}]  best visual of the given type}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
