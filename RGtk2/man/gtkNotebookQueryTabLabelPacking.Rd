\alias{gtkNotebookQueryTabLabelPacking}
\name{gtkNotebookQueryTabLabelPacking}
\title{gtkNotebookQueryTabLabelPacking}
\description{Query the packing attributes for the tab label of the page
containing \code{child}.}
\usage{gtkNotebookQueryTabLabelPacking(object, child)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkNotebook}}]  a \verb{\link{GtkNotebook}}}
\item{\verb{child}}{[\verb{\link{GtkWidget}}]  the page}
}
\value{
A list containing the following elements:
\item{\verb{expand}}{[logical]  location to store the expand value (or NULL)}
\item{\verb{fill}}{[logical]  location to store the fill value (or NULL)}
\item{\verb{pack.type}}{[\code{\link{GtkPackType}}]  location to store the pack_type (or NULL)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
