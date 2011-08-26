\alias{gtkPanedGetHandleWindow}
\name{gtkPanedGetHandleWindow}
\title{gtkPanedGetHandleWindow}
\description{Returns the \code{\link{GdkWindow}} of the handle. This function is
useful when handling button or motion events because it
enables the callback to distinguish between the window
of the paned, a child and the handle.}
\usage{gtkPanedGetHandleWindow(object)}
\arguments{\item{\verb{object}}{the paned's handle window.}}
\details{Since 2.20}
\value{[\code{\link{GdkWindow}}] the paned's handle window.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
