\alias{gtkContainerRemove}
\name{gtkContainerRemove}
\title{gtkContainerRemove}
\description{Removes \code{widget} from \code{container}. \code{widget} must be inside \code{container}.
Note that \code{container} will own a reference to \code{widget}, and that this
may be the last reference held; so removing a widget from its
container can destroy that widget. If you want to use \code{widget}
again, you need to add a reference to it while it's not inside
a container, If you don't want to use \code{widget}
again it's usually more efficient to simply destroy it directly
using \code{\link{gtkWidgetDestroy}} since this will remove it from the
container and help break any circular reference count cycles.}
\usage{gtkContainerRemove(object, widget)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkContainer}}}
\item{\verb{widget}}{a current child of \code{container}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
