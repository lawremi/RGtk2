\alias{atkTableRefAt}
\name{atkTableRefAt}
\title{atkTableRefAt}
\description{Get a reference to the table cell at \code{row}, \code{column}.}
\usage{atkTableRefAt(object, row, column)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\verb{row}}{[integer]  a \verb{integer} representing a row in \code{table}}
\item{\verb{column}}{[integer]  a \verb{integer} representing a column in \code{table}}
}
\value{[\code{\link{AtkObject}}]  a AtkObject* representing the referred to accessible}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
