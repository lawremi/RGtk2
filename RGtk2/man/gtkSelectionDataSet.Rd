\alias{gtkSelectionDataSet}
\name{gtkSelectionDataSet}
\title{gtkSelectionDataSet}
\description{Stores new data into a \verb{\link{GtkSelectionData}} object. Should
\emph{only} be called from a selection handler callback.
Zero-terminates the stored data.}
\usage{gtkSelectionDataSet(object, type = object[["target"]], format = 8, data)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkSelectionData}}]  a pointer to a \verb{\link{GtkSelectionData}} structure.}
\item{\verb{type}}{[\verb{\link{GdkAtom}}]  the type of selection data}
\item{\verb{format}}{[integer]  format (number of bits in a unit)}
\item{\verb{data}}{[raw]  pointer to the data (will be copied)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
