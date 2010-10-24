\alias{gtkDragDestAddTextTargets}
\name{gtkDragDestAddTextTargets}
\title{gtkDragDestAddTextTargets}
\description{Add the text targets supported by \verb{GtkSelection} to
the target list of the drag destination. The targets
are added with \code{info} = 0. If you need another value, 
use \code{\link{gtkTargetListAddTextTargets}} and
\code{\link{gtkDragDestSetTargetList}}.}
\usage{gtkDragDestAddTextTargets(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}} that's a drag destination}}
\details{Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
