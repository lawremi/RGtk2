\alias{gdkDropReply}
\name{gdkDropReply}
\title{gdkDropReply}
\description{Accepts or rejects a drop. }
\usage{gdkDropReply(object, ok, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDragContext}}.}
\item{\verb{ok}}{\code{TRUE} if the drop is accepted.}
\item{\verb{time}}{the timestamp for this operation.}
}
\details{This function is called by the drag destination in response
to a drop initiated by the drag source.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
