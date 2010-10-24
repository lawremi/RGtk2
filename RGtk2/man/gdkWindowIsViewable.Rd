\alias{gdkWindowIsViewable}
\name{gdkWindowIsViewable}
\title{gdkWindowIsViewable}
\description{Check if the window and all ancestors of the window are
mapped. (This is not necessarily "viewable" in the X sense, since
we only check as far as we have GDK window parents, not to the root
window.)}
\usage{gdkWindowIsViewable(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\value{[logical] \code{TRUE} if the window is viewable}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
