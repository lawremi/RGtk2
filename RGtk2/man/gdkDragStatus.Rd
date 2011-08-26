\alias{gdkDragStatus}
\name{gdkDragStatus}
\title{gdkDragStatus}
\description{Selects one of the actions offered by the drag source.}
\usage{gdkDragStatus(object, action, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDragContext}}.}
\item{\verb{action}}{the selected action which will be taken when a drop happens,
or 0 to indicate that a drop will not be accepted.}
\item{\verb{time}}{the timestamp for this operation.}
}
\details{This function is called by the drag destination in response to
\code{\link{gdkDragMotion}} called by the drag source.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
