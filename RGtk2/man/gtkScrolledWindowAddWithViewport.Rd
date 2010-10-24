\alias{gtkScrolledWindowAddWithViewport}
\name{gtkScrolledWindowAddWithViewport}
\title{gtkScrolledWindowAddWithViewport}
\description{Used to add children without native scrolling capabilities. This
is simply a convenience function; it is equivalent to adding the
unscrollable child to a viewport, then adding the viewport to the
scrolled window. If a child has native scrolling, use
\code{\link{gtkContainerAdd}} instead of this function.}
\usage{gtkScrolledWindowAddWithViewport(object, child)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkScrolledWindow}}}
\item{\verb{child}}{the widget you want to scroll}
}
\details{The viewport scrolls the child by moving its \code{\link{GdkWindow}}, and takes
the size of the child to be the size of its toplevel \code{\link{GdkWindow}}. 
This will be very wrong for most widgets that support native scrolling;
for example, if you add a widget such as \code{\link{GtkTreeView}} with a viewport,
the whole widget will scroll, including the column headings. Thus, 
widgets with native scrolling support should not be used with the 
\code{\link{GtkViewport}} proxy.
  
A widget supports scrolling natively if the 
set_scroll_adjustments_signal field in \code{\link{GtkWidgetClass}} is non-zero,
i.e. has been filled in with a valid signal identifier.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
