\alias{gtkCellViewGetSizeOfRow}
\name{gtkCellViewGetSizeOfRow}
\title{gtkCellViewGetSizeOfRow}
\description{Sets \code{requisition} to the size needed by \code{cell.view} to display 
the model row pointed to by \code{path}.}
\usage{gtkCellViewGetSizeOfRow(object, path)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkCellView}}}
\item{\verb{path}}{a \code{\link{GtkTreePath}}}
}
\details{Since 2.6}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE}}
\item{\verb{requisition}}{return location for the size}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
