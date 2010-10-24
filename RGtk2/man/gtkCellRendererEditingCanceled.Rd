\alias{gtkCellRendererEditingCanceled}
\name{gtkCellRendererEditingCanceled}
\title{gtkCellRendererEditingCanceled}
\description{
Causes the cell renderer to emit the \code{\link{gtkCellRendererEditingCanceled}} 
signal.  
\strong{WARNING: \code{gtk_cell_renderer_editing_canceled} has been deprecated since version 2.6 and should not be used in newly-written code. Use \code{\link{gtkCellRendererStopEditing}} instead}
}
\usage{gtkCellRendererEditingCanceled(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkCellRenderer}}}}
\details{This function is for use only by implementations of cell renderers that 
need to notify the client program that an editing process was canceled 
and the changes were not committed.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
