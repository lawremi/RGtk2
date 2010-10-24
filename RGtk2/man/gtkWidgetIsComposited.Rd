\alias{gtkWidgetIsComposited}
\name{gtkWidgetIsComposited}
\title{gtkWidgetIsComposited}
\description{Whether \code{widget} can rely on having its alpha channel
drawn correctly. On X11 this function returns whether a
compositing manager is running for \code{widget}'s screen.}
\usage{gtkWidgetIsComposited(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{Please note that the semantics of this call will change
in the future if used on a widget that has a composited
window in its hierarchy (as set by \code{\link{gdkWindowSetComposited}}).
  Since 2.10}
\value{[logical] \code{TRUE} if the widget can rely on its alpha
channel being drawn correctly.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
