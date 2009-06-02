\alias{gtkSelectionDataSet}
\name{gtkSelectionDataSet}
\title{gtkSelectionDataSet}
\description{Stores new data into a \code{\link{GtkSelectionData}} object. Should
\emph{only} be called from a selection handler callback.
Zero-terminates the stored data.}
\usage{gtkSelectionDataSet(object, type = object[["target"]], format =
8L, data)}
\arguments{
\item{\code{object}}{[\code{\link{GtkSelectionData}}]  a pointer to a \code{\link{GtkSelectionData}} structure.}
\item{\code{type}}{[\code{\link{GdkAtom}}]  the type of selection data}
\item{\code{format}}{[integer]  format (number of bits in a unit)}
\item{\code{data}}{[raw]  pointer to the data (will be copied)}
\item{\code{length}}{[integer]  length of the data}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
