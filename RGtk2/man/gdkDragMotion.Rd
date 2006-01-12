\alias{gdkDragMotion}
\name{gdkDragMotion}
\title{gdkDragMotion}
\description{Updates the drag context when the pointer moves or the 
set of actions changes.}
\usage{gdkDragMotion(object, dest.window, protocol, x.root, y.root, suggested.action, possible.actions, time)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDragContext}}]  a \code{\link{GdkDragContext}}.}
\item{\code{dest.window}}{[\code{\link{GdkWindow}}]  the new destination window, obtained by 
    \code{\link{gdkDragFindWindow}}.}
\item{\code{protocol}}{[\code{\link{GdkDragProtocol}}]  the DND protocol in use, obtained by \code{\link{gdkDragFindWindow}}.}
\item{\code{x.root}}{[integer]  the x position of the pointer in root coordinates.}
\item{\code{y.root}}{[integer]  the y position of the pointer in root coordinates.}
\item{\code{suggested.action}}{[\code{\link{GdkDragAction}}]  the suggested action.}
\item{\code{possible.actions}}{[\code{\link{GdkDragAction}}]  the possible actions.}
\item{\code{time}}{[numeric]  the timestamp for this operation.}
}
\details{This function is called by the drag source.  }
\value{[logical]  FIXME}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
