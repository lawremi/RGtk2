\alias{gtkWidgetHideOnDelete}
\name{gtkWidgetHideOnDelete}
\title{gtkWidgetHideOnDelete}
\description{Utility function; intended to be connected to the "delete_event"
signal on a \code{\link{GtkWindow}}. The function calls \code{\link{gtkWidgetHide}} on its
argument, then returns \code{TRUE}. If connected to "delete_event", the
result is that clicking the close button for a window (on the
window frame, top right corner usually) will hide but not destroy
the window. By default, GTK+ destroys windows when "delete_event"
is received.}
\usage{gtkWidgetHideOnDelete(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}}
\value{[logical]  \code{TRUE}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
