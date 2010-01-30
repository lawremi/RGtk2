\alias{gdkDropFinish}
\name{gdkDropFinish}
\title{gdkDropFinish}
\description{Ends the drag operation after a drop.}
\usage{gdkDropFinish(object, success, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDragContext}}]  a \verb{GtkDragContext}.}
\item{\verb{success}}{[logical] \code{TRUE} if the data was successfully received.}
\item{\verb{time}}{[numeric]  the timestamp for this operation.}
}
\details{This function is called by the drag destination.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
