\alias{gtkToolPaletteAddDragDest}
\name{gtkToolPaletteAddDragDest}
\title{gtkToolPaletteAddDragDest}
\description{Sets \code{palette} as drag source (see \code{\link{gtkToolPaletteSetDragSource}})
and sets \code{widget} as a drag destination for drags from \code{palette}.
See \code{\link{gtkDragDestSet}}.}
\usage{gtkToolPaletteAddDragDest(object, widget, flags, targets, actions)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolPalette}}}
\item{\verb{widget}}{a \code{\link{GtkWidget}} which should be a drag destination for \code{palette}}
\item{\verb{flags}}{the flags that specify what actions GTK+ should take for drops
on that widget}
\item{\verb{targets}}{the \verb{GtkToolPaletteDragTarget}s which the widget
should support}
\item{\verb{actions}}{the \code{\link{GdkDragAction}}s which the widget should suppport}
}
\details{Since 2.20}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
