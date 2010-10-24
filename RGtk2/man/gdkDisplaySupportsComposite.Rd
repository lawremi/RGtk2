\alias{gdkDisplaySupportsComposite}
\name{gdkDisplaySupportsComposite}
\title{gdkDisplaySupportsComposite}
\description{Returns \code{TRUE} if \code{\link{gdkWindowSetComposited}} can be used
to redirect drawing on the window using compositing.}
\usage{gdkDisplaySupportsComposite(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkDisplay}}}}
\details{Currently this only works on X11 with XComposite and
XDamage extensions available.
  Since 2.12}
\value{[logical] \code{TRUE} if windows may be composited.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
