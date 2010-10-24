\alias{gtkWidgetSetSizeRequest}
\name{gtkWidgetSetSizeRequest}
\title{gtkWidgetSetSizeRequest}
\description{Sets the minimum size of a widget; that is, the widget's size
request will be \code{width} by \code{height}. You can use this function to
force a widget to be either larger or smaller than it normally
would be.}
\usage{gtkWidgetSetSizeRequest(object, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{width}}{width \code{widget} should request, or -1 to unset}
\item{\verb{height}}{height \code{widget} should request, or -1 to unset}
}
\details{In most cases, \code{\link{gtkWindowSetDefaultSize}} is a better choice for
toplevel windows than this function; setting the default size will
still allow users to shrink the window. Setting the size request
will force them to leave the window at least as large as the size
request. When dealing with window sizes,
\code{\link{gtkWindowSetGeometryHints}} can be a useful function as well.
  
Note the inherent danger of setting any fixed size - themes,
translations into other languages, different fonts, and user action
can all change the appropriate size for a given widget. So, it's
basically impossible to hardcode a size that will always be
correct.
  
The size request of a widget is the smallest size a widget can
accept while still functioning well and drawing itself correctly.
However in some strange cases a widget may be allocated less than
its requested size, and in many cases a widget may be allocated more
space than it requested.
  
If the size request in a given direction is -1 (unset), then
the "natural" size request of the widget will be used instead.
  
Widgets can't actually be allocated a size less than 1 by 1, but
you can pass 0,0 to this function to mean "as small as possible."}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
