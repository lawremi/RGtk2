\alias{gdkScreenIsComposited}
\name{gdkScreenIsComposited}
\title{gdkScreenIsComposited}
\description{Returns whether windows with an RGBA visual can reasonably
be expected to have their alpha channel drawn correctly on
the screen.}
\usage{gdkScreenIsComposited(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkScreen}}}}
\details{On X11 this function returns whether a compositing manager is
compositing \code{screen}.
  Since 2.10}
\value{[logical] Whether windows with RGBA visuals can reasonably be
expected to have their alpha channels drawn correctly on the screen.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
