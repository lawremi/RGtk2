\alias{gtkCellRendererStartEditing}
\name{gtkCellRendererStartEditing}
\title{gtkCellRendererStartEditing}
\description{Passes an activate event to the cell renderer for possible processing.}
\usage{gtkCellRendererStartEditing(object, event, widget, path, background.area, 
    cell.area, flags)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkCellRenderer}}}
\item{\verb{event}}{a \code{\link{GdkEvent}}}
\item{\verb{widget}}{widget that received the event}
\item{\verb{path}}{widget-dependent string representation of the event location;
e.g. for \code{\link{GtkTreeView}}, a string representation of \code{\link{GtkTreePath}}}
\item{\verb{background.area}}{background area as passed to \code{\link{gtkCellRendererRender}}}
\item{\verb{cell.area}}{cell area as passed to \code{\link{gtkCellRendererRender}}}
\item{\verb{flags}}{render flags}
}
\value{[\code{\link{GtkCellEditable}}] A new \code{\link{GtkCellEditable}}, or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
