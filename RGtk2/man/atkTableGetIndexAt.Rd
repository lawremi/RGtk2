\alias{atkTableGetIndexAt}
\name{atkTableGetIndexAt}
\title{atkTableGetIndexAt}
\description{Gets a \verb{integer} representing the index at the specified \code{row} and \code{column}.}
\usage{atkTableGetIndexAt(object, row, column)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\verb{row}}{[integer]  a \verb{integer} representing a row in \code{table}}
\item{\verb{column}}{[integer]  a \verb{integer} representing a column in \code{table}}
}
\value{[integer]  a \verb{integer} representing the index at specified position.
The value -1 is returned if the object at row,column is not a child
of table or table does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
