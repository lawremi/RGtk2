\alias{gtkSelectionDataSet}
\name{gtkSelectionDataSet}
\title{gtkSelectionDataSet}
\description{Stores new data into a \code{\link{GtkSelectionData}} object. Should
\emph{only} be called from a selection handler callback.
Zero-terminates the stored data.}
\usage{gtkSelectionDataSet(object, type = object[["target"]], format = 8, 
    data)}
\arguments{
\item{\verb{object}}{a pointer to a \code{\link{GtkSelectionData}} structure.}
\item{\verb{type}}{the type of selection data}
\item{\verb{format}}{format (number of bits in a unit)}
\item{\verb{data}}{pointer to the data (will be copied)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
