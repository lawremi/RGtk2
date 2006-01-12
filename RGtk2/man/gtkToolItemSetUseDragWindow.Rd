\alias{gtkToolItemSetUseDragWindow}
\name{gtkToolItemSetUseDragWindow}
\title{gtkToolItemSetUseDragWindow}
\description{Sets whether \code{toolitem} has a drag window. When \code{TRUE} the
toolitem can be used as a drag source through \code{\link{gtkDragSourceSet}}.
When \code{toolitem} has a drag window it will intercept all events,
even those that would otherwise be sent to a child of \code{toolitem}.}
\usage{gtkToolItemSetUseDragWindow(object, use.drag.window)}
\arguments{
\item{\code{object}}{[\code{\link{GtkToolItem}}]  a \code{\link{GtkToolItem}} }
\item{\code{use.drag.window}}{[logical]  Whether \code{toolitem} has a drag window.}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
