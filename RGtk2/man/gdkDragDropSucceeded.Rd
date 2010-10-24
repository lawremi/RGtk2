\alias{gdkDragDropSucceeded}
\name{gdkDragDropSucceeded}
\title{gdkDragDropSucceeded}
\description{Returns whether the dropped data has been successfully 
transferred. This function is intended to be used while 
handling a \code{GDK_DROP_FINISHED} event, its return value is
meaningless at other times.}
\usage{gdkDragDropSucceeded(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkDragContext}}}}
\details{Since 2.6}
\value{[logical] \code{TRUE} if the drop was successful.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
