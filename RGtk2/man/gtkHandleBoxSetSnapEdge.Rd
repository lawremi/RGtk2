\alias{gtkHandleBoxSetSnapEdge}
\name{gtkHandleBoxSetSnapEdge}
\title{gtkHandleBoxSetSnapEdge}
\description{Sets the snap edge of a handlebox. The snap edge is
the edge of the detached child that must be aligned
with the corresponding edge of the "ghost" left
behind when the child was detached to reattach
the torn-off window. Usually, the snap edge should
be chosen so that it stays in the same place on
the screen when the handlebox is torn off.}
\usage{gtkHandleBoxSetSnapEdge(object, edge)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkHandleBox}}}
\item{\verb{edge}}{the snap edge, or -1 to unset the value; in which
case GTK+ will try to guess an appropriate value
in the future.}
}
\details{If the snap edge is not set, then an appropriate value
will be guessed from the handle position. If the
handle position is \code{GTK_POS_RIGHT} or \code{GTK_POS_LEFT},
then the snap edge will be \code{GTK_POS_TOP}, otherwise
it will be \code{GTK_POS_LEFT}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
