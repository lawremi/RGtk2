\alias{gtkWidgetHasGrab}
\name{gtkWidgetHasGrab}
\title{gtkWidgetHasGrab}
\description{Determines whether the widget is currently grabbing events, so it
is the only widget receiving input events (keyboard and mouse).}
\usage{gtkWidgetHasGrab(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{See also \code{\link{gtkGrabAdd}}.
  Since 2.18}
\value{[logical] \code{TRUE} if the widget is in the grab_widgets stack}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
