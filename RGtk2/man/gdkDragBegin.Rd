\alias{gdkDragBegin}
\name{gdkDragBegin}
\title{gdkDragBegin}
\description{Starts a drag and creates a new drag context for it.}
\usage{gdkDragBegin(object, targets)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  the source window for this drag.}
\item{\verb{targets}}{[list]  the list of offered targets.}
}
\details{This function is called by the drag source.  }
\value{[\verb{\link{GdkDragContext}}]  a newly created \verb{\link{GdkDragContext}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
