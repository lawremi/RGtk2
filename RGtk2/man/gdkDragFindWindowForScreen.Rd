\alias{gdkDragFindWindowForScreen}
\name{gdkDragFindWindowForScreen}
\title{gdkDragFindWindowForScreen}
\description{Finds the destination window and DND protocol to use at the
given pointer position. }
\usage{gdkDragFindWindowForScreen(object, drag.window, screen, x.root, y.root)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDragContext}}]  a \verb{\link{GdkDragContext}}}
\item{\verb{drag.window}}{[\verb{\link{GdkWindow}}]  a window which may be at the pointer position, but
should be ignored, since it is put up by the drag source as an icon.}
\item{\verb{screen}}{[\verb{\link{GdkScreen}}]  the screen where the destination window is sought. }
\item{\verb{x.root}}{[integer]  the x position of the pointer in root coordinates.}
\item{\verb{y.root}}{[integer]  the y position of the pointer in root coordinates.}
}
\details{This function is called by the drag source to obtain the 
\code{dest.window} and \code{protocol} parameters for \code{\link{gdkDragMotion}}.  

  Since  2.2}
\value{
A list containing the following elements:
\item{\verb{dest.window}}{[\verb{\link{GdkWindow}}]  location to store the destination window in.}
\item{\verb{protocol}}{[\code{\link{GdkDragProtocol}}]  location to store the DND protocol in.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
