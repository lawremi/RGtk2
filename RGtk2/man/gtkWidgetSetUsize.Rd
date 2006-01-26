\alias{gtkWidgetSetUsize}
\name{gtkWidgetSetUsize}
\title{gtkWidgetSetUsize}
\description{
Sets the minimum size of a widget; that is, the widget's size
request will be \code{width} by \code{height}. You can use this function to
force a widget to be either larger or smaller than it is. The
strange "usize" name dates from the early days of GTK+, and derives
from X Window System terminology. In many cases,
\code{\link{gtkWindowSetDefaultSize}} is a better choice for toplevel
windows than this function; setting the default size will still
allow users to shrink the window. Setting the usize will force them
to leave the window at least as large as the usize. When dealing
with window sizes, \code{\link{gtkWindowSetGeometryHints}} can be a useful
function as well.
\strong{WARNING: \code{gtk_widget_set_usize} is deprecated and should not be used in newly-written code.}
}
\usage{gtkWidgetSetUsize(object, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{width}}{[integer]  minimum width, or -1 to unset}
\item{\code{height}}{[integer]  minimum height, or -1 to unset}
}
\details{Note the inherent danger of setting any fixed size - themes,
translations into other languages, different fonts, and user action
can all change the appropriate size for a given widget. So, it's
basically impossible to hardcode a size that will always be
correct.
  
\code{Deprecated}: Use \code{\link{gtkWidgetSetSizeRequest}} instead.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
