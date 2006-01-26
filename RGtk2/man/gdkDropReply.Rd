\alias{gdkDropReply}
\name{gdkDropReply}
\title{gdkDropReply}
\description{Accepts or rejects a drop. }
\usage{gdkDropReply(object, ok, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\code{object}}{[\code{\link{GdkDragContext}}]  a \code{\link{GdkDragContext}}.}
\item{\code{ok}}{[logical]  \code{TRUE} if the drop is accepted.}
\item{\code{time}}{[numeric]  the timestamp for this operation.}
}
\details{This function is called by the drag destination in response
to a drop initiated by the drag source.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
