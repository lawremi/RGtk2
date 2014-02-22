\alias{gdkDragMotion}
\name{gdkDragMotion}
\title{gdkDragMotion}
\description{Updates the drag context when the pointer moves or the 
set of actions changes.}
\usage{gdkDragMotion(object, dest.window, protocol, x.root, y.root, 
    suggested.action, possible.actions, time)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDragContext}}.}
\item{\verb{dest.window}}{the new destination window, obtained by
\code{\link{gdkDragFindWindow}}.}
\item{\verb{protocol}}{the DND protocol in use, obtained by \code{\link{gdkDragFindWindow}}.}
\item{\verb{x.root}}{the x position of the pointer in root coordinates.}
\item{\verb{y.root}}{the y position of the pointer in root coordinates.}
\item{\verb{suggested.action}}{the suggested action.}
\item{\verb{possible.actions}}{the possible actions.}
\item{\verb{time}}{the timestamp for this operation.}
}
\details{This function is called by the drag source.}
\value{[logical] FIXME}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
