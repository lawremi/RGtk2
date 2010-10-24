\alias{gtkWindowSetDefaultSize}
\name{gtkWindowSetDefaultSize}
\title{gtkWindowSetDefaultSize}
\description{Sets the default size of a window. If the window's "natural" size
(its size request) is larger than the default, the default will be
ignored. More generally, if the default size does not obey the
geometry hints for the window (\code{\link{gtkWindowSetGeometryHints}} can
be used to set these explicitly), the default size will be clamped
to the nearest permitted size.}
\usage{gtkWindowSetDefaultSize(object, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{width}}{width in pixels, or -1 to unset the default width}
\item{\verb{height}}{height in pixels, or -1 to unset the default height}
}
\details{Unlike \code{\link{gtkWidgetSetSizeRequest}}, which sets a size request for
a widget and thus would keep users from shrinking the window, this
function only sets the initial size, just as if the user had
resized the window themselves. Users can still shrink the window
again as they normally would. Setting a default size of -1 means to
use the "natural" default size (the size request of the window).
  
For more control over a window's initial size and how resizing works,
investigate \code{\link{gtkWindowSetGeometryHints}}.
  
For some uses, \code{\link{gtkWindowResize}} is a more appropriate function.
\code{\link{gtkWindowResize}} changes the current size of the window, rather
than the size to be used on initial display. \code{\link{gtkWindowResize}} always
affects the window itself, not the geometry widget.
  
The default size of a window only affects the first time a window is
shown; if a window is hidden and re-shown, it will remember the size
it had prior to hiding, rather than using the default size.
  
Windows can't actually be 0x0 in size, they must be at least 1x1, but
passing 0 for \code{width} and \code{height} is OK, resulting in a 1x1 default size.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
