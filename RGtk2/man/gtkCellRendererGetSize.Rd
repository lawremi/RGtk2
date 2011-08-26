\alias{gtkCellRendererGetSize}
\name{gtkCellRendererGetSize}
\title{gtkCellRendererGetSize}
\description{Obtains the width and height needed to render the cell. Used by view 
widgets to determine the appropriate size for the cell_area passed to
\code{\link{gtkCellRendererRender}}.  If \code{cell.area} is not \code{NULL}, fills in the
x and y offsets (if set) of the cell relative to this location. }
\usage{gtkCellRendererGetSize(object, widget, cell.area = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkCellRenderer}}}
\item{\verb{widget}}{the widget the renderer is rendering to}
\item{\verb{cell.area}}{The area a cell will be allocated, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Please note that the values set in \code{width} and \code{height}, as well as those 
in \code{x.offset} and \code{y.offset} are inclusive of the xpad and ypad properties.}
\value{
A list containing the following elements:
\item{\verb{x.offset}}{location to return x offset of cell relative to \code{cell.area}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{y.offset}}{location to return y offset of cell relative to \code{cell.area}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{width}}{location to return width needed to render a cell, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{height}}{location to return height needed to render a cell, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
