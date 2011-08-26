\alias{gdkScreenListVisuals}
\name{gdkScreenListVisuals}
\title{gdkScreenListVisuals}
\description{Lists the available visuals for the specified \code{screen}.
A visual describes a hardware image data format.
For example, a visual might support 24-bit color, or 8-bit color,
and might expect pixels to be in a certain format.}
\usage{gdkScreenListVisuals(object)}
\arguments{\item{\verb{object}}{the relevant \code{\link{GdkScreen}}.}}
\details{
  Since 2.2}
\value{[list] a list of visuals; the list must be freed, but not its
contents}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
