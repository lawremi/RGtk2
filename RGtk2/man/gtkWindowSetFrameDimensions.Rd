\alias{gtkWindowSetFrameDimensions}
\name{gtkWindowSetFrameDimensions}
\title{gtkWindowSetFrameDimensions}
\description{(Note: this is a special-purpose function intended for the framebuffer
 port; see \code{\link{gtkWindowSetHasFrame}}. It will have no effect on the
 window border drawn by the window manager, which is the normal
 case when using the X Window system.)}
\usage{gtkWindowSetFrameDimensions(object, left, top, right, bottom)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWindow}}]  a \code{\link{GtkWindow}} that has a frame}
\item{\code{left}}{[integer]  The width of the left border}
\item{\code{top}}{[integer]  The height of the top border}
\item{\code{right}}{[integer]  The width of the right border}
\item{\code{bottom}}{[integer]  The height of the bottom border}
}
\details{For windows with frames (see \code{\link{gtkWindowSetHasFrame}}) this function
can be used to change the size of the frame border.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
