\alias{atkTableGetRowExtentAt}
\name{atkTableGetRowExtentAt}
\title{atkTableGetRowExtentAt}
\description{Gets the number of rows occupied by the accessible object
at a specified \code{row} and \code{column} in the \code{table}.}
\usage{atkTableGetRowExtentAt(object, row, column)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\verb{row}}{[integer]  a \verb{integer} representing a row in \code{table}}
\item{\verb{column}}{[integer]  a \verb{integer} representing a column in \code{table}}
}
\value{[integer]  a gint representing the row extent at specified position, or 0
if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
