\alias{gdkTestRenderSync}
\name{gdkTestRenderSync}
\title{gdkTestRenderSync}
\description{This function retrieves a pixel from \code{window} to force the windowing
system to carry out any pending rendering commands.
This function is intended to be used to syncronize with rendering
pipelines, to benchmark windowing system rendering operations.}
\usage{gdkTestRenderSync(window)}
\arguments{\item{\verb{window}}{a mapped \code{\link{GdkWindow}}}}
\details{Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
