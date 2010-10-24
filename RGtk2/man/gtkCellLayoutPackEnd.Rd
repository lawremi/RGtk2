\alias{gtkCellLayoutPackEnd}
\name{gtkCellLayoutPackEnd}
\title{gtkCellLayoutPackEnd}
\description{Adds the \code{cell} to the end of \code{cell.layout}. If \code{expand} is \code{FALSE}, then the
\code{cell} is allocated no more space than it needs. Any unused space is
divided evenly between cells for which \code{expand} is \code{TRUE}.}
\usage{gtkCellLayoutPackEnd(object, cell, expand = TRUE)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkCellLayout}}.}
\item{\verb{cell}}{A \code{\link{GtkCellRenderer}}.}
\item{\verb{expand}}{\code{TRUE} if \code{cell} is to be given extra space allocated to \code{cell.layout}.}
}
\details{Note that reusing the same cell renderer is not supported.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
