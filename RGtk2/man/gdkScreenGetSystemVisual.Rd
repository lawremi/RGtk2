\alias{gdkScreenGetSystemVisual}
\name{gdkScreenGetSystemVisual}
\title{gdkScreenGetSystemVisual}
\description{Get the system's default visual for \code{screen}.
This is the visual for the root window of the display.
The return value should not be freed.}
\usage{gdkScreenGetSystemVisual(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkScreen}}.}}
\details{Since 2.2}
\value{[\code{\link{GdkVisual}}] the system visual. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
