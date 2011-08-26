\alias{gdkDragBegin}
\name{gdkDragBegin}
\title{gdkDragBegin}
\description{Starts a drag and creates a new drag context for it.}
\usage{gdkDragBegin(object, targets)}
\arguments{
\item{\verb{object}}{the source window for this drag.}
\item{\verb{targets}}{the offered targets, as list of \code{\link{GdkAtom}}s}
}
\details{This function is called by the drag source.}
\value{[\code{\link{GdkDragContext}}] a newly created \code{\link{GdkDragContext}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
