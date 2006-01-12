\alias{atkTableGetRowExtentAt}
\name{atkTableGetRowExtentAt}
\title{atkTableGetRowExtentAt}
\description{Gets the number of rows occupied by the accessible object
at a specified \code{row} and \code{column} in the \code{table}.}
\usage{atkTableGetRowExtentAt(object, row, column)}
\arguments{
\item{\code{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\code{row}}{[integer]  a \code{integer} representing a row in \code{table}}
\item{\code{column}}{[integer]  a \code{integer} representing a column in \code{table}}
}
\value{[integer]  a gint representing the row extent at specified position, or 0
if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
