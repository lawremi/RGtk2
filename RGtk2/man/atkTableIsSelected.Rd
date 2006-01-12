\alias{atkTableIsSelected}
\name{atkTableIsSelected}
\title{atkTableIsSelected}
\description{Gets a boolean value indicating whether the accessible object
at the specified \code{row} and \code{column} is selected}
\usage{atkTableIsSelected(object, row, column)}
\arguments{
\item{\code{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\code{row}}{[integer]  a \code{integer} representing a row in \code{table}}
\item{\code{column}}{[integer]  a \code{integer} representing a column in \code{table}}
}
\value{[logical]  a gboolean representing if the cell is selected, or 0
if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
