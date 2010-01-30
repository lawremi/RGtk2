\alias{gtkCellRendererStopEditing}
\name{gtkCellRendererStopEditing}
\title{gtkCellRendererStopEditing}
\description{Informs the cell renderer that the editing is stopped.
If \code{canceled} is \code{TRUE}, the cell renderer will emit the 
\code{\link{gtkCellRendererEditingCanceled}} signal. }
\usage{gtkCellRendererStopEditing(object, canceled)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCellRenderer}}]  A \verb{\link{GtkCellRenderer}}}
\item{\verb{canceled}}{[logical] \code{TRUE} if the editing has been canceled}
}
\details{This function should be called by cell renderer implementations 
in response to the \code{\link{gtkCellEditableEditingDone}} signal of 
\verb{\link{GtkCellEditable}}.  

  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
