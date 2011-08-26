\alias{gtkWidgetHasScreen}
\name{gtkWidgetHasScreen}
\title{gtkWidgetHasScreen}
\description{Checks whether there is a \code{\link{GdkScreen}} is associated with
this widget. All toplevel widgets have an associated
screen, and all widgets added into a hierarchy with a toplevel
window at the top.}
\usage{gtkWidgetHasScreen(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{Since 2.2}
\value{[logical] \code{TRUE} if there is a \code{\link{GdkScreen}} associcated
with the widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
