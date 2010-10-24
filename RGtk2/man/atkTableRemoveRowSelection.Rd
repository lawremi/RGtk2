\alias{atkTableRemoveRowSelection}
\name{atkTableRemoveRowSelection}
\title{atkTableRemoveRowSelection}
\description{Removes the specified \code{row} from the selection.}
\usage{atkTableRemoveRowSelection(object, row)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\verb{row}}{[integer]  a \verb{integer} representing a row in \code{table}}
}
\value{[logical]  a gboolean representing if the row was successfully removed from
the selection, or 0 if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
