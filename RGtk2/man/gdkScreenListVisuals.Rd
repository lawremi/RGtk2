\alias{gdkScreenListVisuals}
\name{gdkScreenListVisuals}
\title{gdkScreenListVisuals}
\description{Lists the available visuals for the specified \code{screen}.
A visual describes a hardware image data format.
For example, a visual might support 24-bit color, or 8-bit color,
and might expect pixels to be in a certain format.}
\usage{gdkScreenListVisuals(object)}
\arguments{\item{\code{object}}{[\code{\link{GdkScreen}}]  the relevant \code{\link{GdkScreen}}.}}
\details{Call \code{g\List\Free()} on the return value when you're finished with it.  

  Since  2.2}
\value{[list] .}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
