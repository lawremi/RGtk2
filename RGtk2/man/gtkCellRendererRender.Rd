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
\usage{gtkCellRendererRender(object, window, widget, background.area, 
    cell.area, expose.area, flags)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkCellRenderer}}}
\item{\verb{window}}{a \code{\link{GdkDrawable}} to draw to}
\item{\verb{widget}}{the widget owning \code{window}}
\item{\verb{background.area}}{entire cell area (including tree expanders and maybe
padding on the sides)}
\item{\verb{cell.area}}{area normally rendered by a cell renderer}
\item{\verb{expose.area}}{area that actually needs updating}
\item{\verb{flags}}{flags that affect rendering}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
