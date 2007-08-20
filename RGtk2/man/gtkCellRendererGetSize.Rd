\alias{gtkCellRendererGetSize}
\name{gtkCellRendererGetSize}
\title{gtkCellRendererGetSize}
\description{Obtains the width and height needed to render the cell. Used by view 
widgets to determine the appropriate size for the cell\_area passed to
\code{\link{gtkCellRendererRender}}.  If \code{cell.area} is not \code{NULL}, fills in the
x and y offsets (if set) of the cell relative to this location. }
\usage{gtkCellRendererGetSize(object, widget, cell.area = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCellRenderer}}]  a \code{\link{GtkCellRenderer}}}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget the renderer is rendering to}
\item{\code{cell.area}}{[\code{\link{GdkRectangle}}]  The area a cell will be allocated, or \code{NULL}}
}
\details{Please note that the values set in \code{width} and \code{height}, as well as those 
in \code{x.offset} and \code{y.offset} are inclusive of the xpad and ypad properties.  }
\value{
A list containing the following elements:
\item{\code{x.offset}}{[integer]  location to return x offset of cell relative to \code{cell.area}, or \code{NULL}}
\item{\code{y.offset}}{[integer]  location to return y offset of cell relative to \code{cell.area}, or \code{NULL}}
\item{\code{width}}{[integer]  location to return width needed to render a cell, or \code{NULL}}
\item{\code{height}}{[integer]  location to return height needed to render a cell, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
