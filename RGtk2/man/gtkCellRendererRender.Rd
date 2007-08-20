\alias{gtkCellRendererRender}
\name{gtkCellRendererRender}
\title{gtkCellRendererRender}
\description{Invokes the virtual render function of the \code{\link{GtkCellRenderer}}. The three
passed-in rectangles are areas of \code{window}. Most renderers will draw within
\code{cell.area}; the xalign, yalign, xpad, and ypad fields of the \code{\link{GtkCellRenderer}}
should be honored with respect to \code{cell.area}. \code{background.area} includes the
blank space around the cell, and also the area containing the tree expander;
so the \code{background.area} rectangles for all cells tile to cover the entire
\code{window}.  \code{expose.area} is a clip rectangle.}
\usage{gtkCellRendererRender(object, window, widget, background.area, cell.area, expose.area, flags)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCellRenderer}}]  a \code{\link{GtkCellRenderer}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkDrawable}} to draw to}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget owning \code{window}}
\item{\code{background.area}}{[\code{\link{GdkRectangle}}]  entire cell area (including tree expanders and maybe 
   padding on the sides)}
\item{\code{cell.area}}{[\code{\link{GdkRectangle}}]  area normally rendered by a cell renderer}
\item{\code{expose.area}}{[\code{\link{GdkRectangle}}]  area that actually needs updating}
\item{\code{flags}}{[\code{\link{GtkCellRendererState}}]  flags that affect rendering}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
