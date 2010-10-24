\alias{gdkDisplayWarpPointer}
\name{gdkDisplayWarpPointer}
\title{gdkDisplayWarpPointer}
\description{Warps the pointer of \code{display} to the point \code{x},\code{y} on 
the screen \code{screen}, unless the pointer is confined
to a window by a grab, in which case it will be moved
as far as allowed by the grab. Warping the pointer 
creates events as if the user had moved the mouse 
instantaneously to the destination.}
\usage{gdkDisplayWarpPointer(object, screen, x, y)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDisplay}}}
\item{\verb{screen}}{the screen of \code{display} to warp the pointer to}
\item{\verb{x}}{the x coordinate of the destination}
\item{\verb{y}}{the y coordinate of the destination}
}
\details{Note that the pointer should normally be under the
control of the user. This function was added to cover
some rare use cases like keyboard navigation support
for the color picker in the \code{\link{GtkColorSelectionDialog}}.
  Since 2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
