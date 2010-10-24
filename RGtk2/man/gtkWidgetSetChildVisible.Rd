\alias{gtkWidgetSetChildVisible}
\name{gtkWidgetSetChildVisible}
\title{gtkWidgetSetChildVisible}
\description{Sets whether \code{widget} should be mapped along with its when its parent
is mapped and \code{widget} has been shown with \code{\link{gtkWidgetShow}}. }
\usage{gtkWidgetSetChildVisible(object, is.visible)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{is.visible}}{if \code{TRUE}, \code{widget} should be mapped along with its parent.}
}
\details{The child visibility can be set for widget before it is added to
a container with \code{\link{gtkWidgetSetParent}}, to avoid mapping
children unnecessary before immediately unmapping them. However
it will be reset to its default state of \code{TRUE} when the widget
is removed from a container.
  
Note that changing the child visibility of a widget does not
queue a resize on the widget. Most of the time, the size of
a widget is computed from all visible children, whether or
not they are mapped. If this is not the case, the container
can queue a resize itself.
  
This function is only useful for container implementations and
never should be called by an application.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
