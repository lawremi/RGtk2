\alias{gtkCellRendererEditingCanceled}
\name{gtkCellRendererEditingCanceled}
\title{gtkCellRendererEditingCanceled}
\description{
Causes the cell renderer to emit the "editing-canceled" signal.  This
function is for use only by implementations of cell renderers that need to
notify the client program that an editing process was canceled and the
changes were not committed.
\strong{WARNING: \code{gtk_cell_renderer_editing_canceled} is deprecated and should not be used in newly-written code. Use \code{\link{gtkCellRendererStopEditing}} instead  
Causes the cell renderer to emit the "editing-canceled" signal.  This
function is for use only by implementations of cell renderers that need to
notify the client program that an editing process was canceled and the
changes were not committed.  

  Since  2.4}
}
\usage{gtkCellRendererEditingCanceled(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkCellRenderer}}]  A \code{\link{GtkCellRenderer}}}}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
