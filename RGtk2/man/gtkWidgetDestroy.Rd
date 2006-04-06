\alias{gtkWidgetDestroy}
\name{gtkWidgetDestroy}
\title{gtkWidgetDestroy}
\description{Destroys a widget. Equivalent to \code{gtk\Object\Destroy()}, except that
you don't have to cast the widget to \code{\link{GtkObject}}. When a widget is
destroyed, it will break any references it holds to other objects.
If the widget is inside a container, the widget will be removed
from the container. If the widget is a toplevel (derived from
\code{\link{GtkWindow}}), it will be removed from the list of toplevels, and the
reference GTK+ holds to it will be removed. Removing a
widget from its container or the list of toplevels results in the
widget being finalized, unless you've added additional references
to the widget with \code{g\Object\Ref()}.}
\usage{gtkWidgetDestroy(object, ...)}
\arguments{\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}}
\details{In most cases, only toplevel widgets (windows) require explicit
destruction, because when you destroy a toplevel its children will
be destroyed as well.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
