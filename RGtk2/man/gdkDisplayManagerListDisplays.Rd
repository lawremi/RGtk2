\alias{gdkDisplayManagerListDisplays}
\name{gdkDisplayManagerListDisplays}
\title{gdkDisplayManagerListDisplays}
\description{List all currently open displays.}
\usage{gdkDisplayManagerListDisplays(object)}
\arguments{\item{\code{object}}{[\code{\link{GdkDisplayManager}}]  a \code{\link{GdkDisplayManager}} }}
\details{  Since  2.2}
\value{[list]  a newly allocated \code{list} of \code{\link{GdkDisplay}} objects.
 Free this list with \code{g\Slist\Free()} when you are done with it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
