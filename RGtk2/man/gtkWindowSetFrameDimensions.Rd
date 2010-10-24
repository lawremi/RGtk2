\alias{gtkWindowSetFrameDimensions}
\name{gtkWindowSetFrameDimensions}
\title{gtkWindowSetFrameDimensions}
\description{(Note: this is a special-purpose function intended for the framebuffer
 port; see \code{\link{gtkWindowSetHasFrame}}. It will have no effect on the
 window border drawn by the window manager, which is the normal
 case when using the X Window system.)}
\usage{gtkWindowSetFrameDimensions(object, left, top, right, bottom)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}} that has a frame}
\item{\verb{left}}{The width of the left border}
\item{\verb{top}}{The height of the top border}
\item{\verb{right}}{The width of the right border}
\item{\verb{bottom}}{The height of the bottom border}
}
\details{For windows with frames (see \code{\link{gtkWindowSetHasFrame}}) this function
can be used to change the size of the frame border.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
