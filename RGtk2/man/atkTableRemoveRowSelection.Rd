\alias{atkTableRemoveRowSelection}
\name{atkTableRemoveRowSelection}
\title{atkTableRemoveRowSelection}
\description{Removes the specified \code{row} from the selection.}
\usage{atkTableRemoveRowSelection(object, row)}
\arguments{
\item{\code{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\code{row}}{[integer]  a \code{integer} representing a row in \code{table}}
}
\value{[logical]  a gboolean representing if the row was successfully removed from
the selection, or 0 if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
