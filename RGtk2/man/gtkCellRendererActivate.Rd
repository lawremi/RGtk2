\alias{gtkCellRendererActivate}
\name{gtkCellRendererActivate}
\title{gtkCellRendererActivate}
\description{Passes an activate event to the cell renderer for possible processing.  
Some cell renderers may use events; for example, \code{\link{GtkCellRendererToggle}} 
toggles when it gets a mouse click.}
\usage{gtkCellRendererActivate(object, event, widget, path, background.area, cell.area, flags)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCellRenderer}}]  a \code{\link{GtkCellRenderer}}}
\item{\code{event}}{[\code{\link{GdkEvent}}]  a \code{\link{GdkEvent}}}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  widget that received the event}
\item{\code{path}}{[character]  widget-dependent string representation of the event location; 
   e.g. for \code{\link{GtkTreeView}}, a string representation of \code{\link{GtkTreePath}}}
\item{\code{background.area}}{[\code{\link{GdkRectangle}}]  background area as passed to \code{\link{gtkCellRendererRender}}}
\item{\code{cell.area}}{[\code{\link{GdkRectangle}}]  cell area as passed to \code{\link{gtkCellRendererRender}}}
\item{\code{flags}}{[\code{\link{GtkCellRendererState}}]  render flags}
}
\value{[logical]  \code{TRUE} if the event was consumed/handled}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
