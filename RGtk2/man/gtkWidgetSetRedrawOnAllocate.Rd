\alias{gtkWidgetSetRedrawOnAllocate}
\name{gtkWidgetSetRedrawOnAllocate}
\title{gtkWidgetSetRedrawOnAllocate}
\description{Sets whether the entire widget is queued for drawing when its size 
allocation changes. By default, this setting is \code{TRUE} and
the entire widget is redrawn on every size change. If your widget
leaves the upper left unchanged when made bigger, turning this
setting off will improve performance.}
\usage{gtkWidgetSetRedrawOnAllocate(object, redraw.on.allocate)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{redraw.on.allocate}}{if \code{TRUE}, the entire widget will be redrawn
when it is allocated to a new size. Otherwise, only the
new portion of the widget will be redrawn.}
}
\details{Note that for \code{NO_WINDOW} widgets setting this flag to \code{FALSE} turns
off all allocation on resizing: the widget will not even redraw if
its position changes; this is to allow containers that don't draw
anything to avoid excess invalidations. If you set this flag on a
\code{NO_WINDOW} widget that \emph{does} draw on \code{widget->window}, 
you are responsible for invalidating both the old and new allocation 
of the widget when the widget is moved and responsible for invalidating
regions newly when the widget increases size.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
