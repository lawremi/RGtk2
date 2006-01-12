\alias{gtkNotebookQueryTabLabelPacking}
\name{gtkNotebookQueryTabLabelPacking}
\title{gtkNotebookQueryTabLabelPacking}
\description{Query the packing attributes for the tab label of the page
containing \code{child}.}
\usage{gtkNotebookQueryTabLabelPacking(object, child)}
\arguments{
\item{\code{object}}{[\code{\link{GtkNotebook}}]  a \code{\link{GtkNotebook}}}
\item{\code{child}}{[\code{\link{GtkWidget}}]  the page}
}
\value{
A list containing the following elements:
\item{\code{expand}}{[logical]  location to store the expand value (or NULL)}
\item{\code{fill}}{[logical]  location to store the fill value (or NULL)}
\item{\code{pack.type}}{[\code{\link{GtkPackType}}]  location to store the pack_type (or NULL)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
