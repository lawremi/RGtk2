\alias{gdkRgbSetInstall}
\name{gdkRgbSetInstall}
\title{gdkRgbSetInstall}
\description{If \code{install} is \code{TRUE}, directs GdkRGB to always install a new "private"
colormap rather than trying to find a best fit with the colors already
allocated. Ordinarily, GdkRGB will install a colormap only if a
sufficient cube cannot be allocated.}
\usage{gdkRgbSetInstall(install)}
\arguments{\item{\verb{install}}{\code{TRUE} to set install mode.}}
\details{A private colormap has more colors, leading to better quality display,
but also leads to the dreaded "colormap flashing" effect.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
