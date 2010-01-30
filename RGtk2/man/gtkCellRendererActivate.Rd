\alias{gtkCellRendererActivate}
\name{gtkCellRendererActivate}
\title{gtkCellRendererActivate}
\description{Passes an activate event to the cell renderer for possible processing.  
Some cell renderers may use events; for example, \verb{\link{GtkCellRendererToggle}} 
toggles when it gets a mouse click.}
\usage{gtkCellRendererActivate(object, event, widget, path, background.area, cell.area, flags)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCellRenderer}}]  a \verb{\link{GtkCellRenderer}}}
\item{\verb{event}}{[\verb{\link{GdkEvent}}]  a \verb{\link{GdkEvent}}}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  widget that received the event}
\item{\verb{path}}{[character]  widget-dependent string representation of the event location; 
   e.g. for \verb{\link{GtkTreeView}}, a string representation of \verb{\link{GtkTreePath}}}
\item{\verb{background.area}}{[\verb{\link{GdkRectangle}}]  background area as passed to \code{\link{gtkCellRendererRender}}}
\item{\verb{cell.area}}{[\verb{\link{GdkRectangle}}]  cell area as passed to \code{\link{gtkCellRendererRender}}}
\item{\verb{flags}}{[\code{\link{GtkCellRendererState}}]  render flags}
}
\value{[logical] \code{TRUE} if the event was consumed/handled}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
