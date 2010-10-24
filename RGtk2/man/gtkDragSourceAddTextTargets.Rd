\alias{gtkDragSourceAddTextTargets}
\name{gtkDragSourceAddTextTargets}
\title{gtkDragSourceAddTextTargets}
\description{Add the text targets supported by \verb{GtkSelection} to
the target list of the drag source.  The targets
are added with \code{info} = 0. If you need another value, 
use \code{\link{gtkTargetListAddTextTargets}} and
\code{\link{gtkDragSourceSetTargetList}}.}
\usage{gtkDragSourceAddTextTargets(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}} that's is a drag source}}
\details{Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
