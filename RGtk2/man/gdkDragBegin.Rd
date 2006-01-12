\alias{gdkDragBegin}
\name{gdkDragBegin}
\title{gdkDragBegin}
\description{Starts a drag and creates a new drag context for it.}
\usage{gdkDragBegin(object, targets)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  the source window for this drag.}
\item{\code{targets}}{[list]  the list of offered targets.}
}
\details{This function is called by the drag source.  }
\value{[\code{\link{GdkDragContext}}]  a newly created \code{\link{GdkDragContext}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
