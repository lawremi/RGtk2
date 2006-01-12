\alias{gtkCellRendererStopEditing}
\name{gtkCellRendererStopEditing}
\title{gtkCellRendererStopEditing}
\description{Informs the cell renderer that the editing is stopped.
If \code{canceled} is \code{TRUE}, the cell renderer will emit the "editing-canceled" 
signal. This function should be called by cell renderer implementations 
in response to the "editing-done" signal of \code{\link{GtkCellEditable}}.}
\usage{gtkCellRendererStopEditing(object, canceled)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCellRenderer}}]  A \code{\link{GtkCellRenderer}}}
\item{\code{canceled}}{[logical]  \code{TRUE} if the editing has been canceled}
}
\details{  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
