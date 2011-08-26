\alias{gdkDragFindWindow}
\name{gdkDragFindWindow}
\title{gdkDragFindWindow}
\description{Finds the destination window and DND protocol to use at the
given pointer position.}
\usage{gdkDragFindWindow(object, drag.window, x.root, y.root)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDragContext}}.}
\item{\verb{drag.window}}{a window which may be at the pointer position, but
should be ignored, since it is put up by the drag source as an icon.}
\item{\verb{x.root}}{the x position of the pointer in root coordinates.}
\item{\verb{y.root}}{the y position of the pointer in root coordinates.}
}
\details{This function is called by the drag source to obtain the 
\code{dest.window} and \code{protocol} parameters for \code{\link{gdkDragMotion}}.}
\value{
A list containing the following elements:
\item{\verb{dest.window}}{location to store the destination window in. \emph{[  \acronym{out}  ]}}
\item{\verb{protocol}}{location to store the DND protocol in. \emph{[  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
