\alias{atkTableGetColumnExtentAt}
\name{atkTableGetColumnExtentAt}
\title{atkTableGetColumnExtentAt}
\description{Gets the number of columns occupied by the accessible object
at the specified \code{row} and \code{column} in the \code{table}.}
\usage{atkTableGetColumnExtentAt(object, row, column)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\verb{row}}{[integer]  a \verb{integer} representing a row in \code{table}}
\item{\verb{column}}{[integer]  a \verb{integer} representing a column in \code{table}}
}
\value{[integer]  a gint representing the column extent at specified position, or 0
if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
