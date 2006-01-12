\alias{gtkCellLayoutReorder}
\name{gtkCellLayoutReorder}
\title{gtkCellLayoutReorder}
\description{Re-inserts \code{cell} at \code{position}. Note that \code{cell} has already to be packed
into \code{cell.layout} for this to function properly.}
\usage{gtkCellLayoutReorder(object, cell, position)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCellLayout}}]  A \code{\link{GtkCellLayout}}.}
\item{\code{cell}}{[\code{\link{GtkCellRenderer}}]  A \code{\link{GtkCellRenderer}} to reorder.}
\item{\code{position}}{[integer]  New position to insert \code{cell} at.}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
