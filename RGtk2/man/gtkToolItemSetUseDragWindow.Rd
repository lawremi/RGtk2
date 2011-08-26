\alias{gtkToolItemSetUseDragWindow}
\name{gtkToolItemSetUseDragWindow}
\title{gtkToolItemSetUseDragWindow}
\description{Sets whether \code{tool.item} has a drag window. When \code{TRUE} the
toolitem can be used as a drag source through \code{\link{gtkDragSourceSet}}.
When \code{tool.item} has a drag window it will intercept all events,
even those that would otherwise be sent to a child of \code{tool.item}.}
\usage{gtkToolItemSetUseDragWindow(object, use.drag.window)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolItem}}}
\item{\verb{use.drag.window}}{Whether \code{tool.item} has a drag window.}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
