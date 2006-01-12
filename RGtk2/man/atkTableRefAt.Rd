\alias{atkTableRefAt}
\name{atkTableRefAt}
\title{atkTableRefAt}
\description{Get a reference to the table cell at \code{row}, \code{column}.}
\usage{atkTableRefAt(object, row, column)}
\arguments{
\item{\code{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\code{row}}{[integer]  a \code{integer} representing a row in \code{table}}
\item{\code{column}}{[integer]  a \code{integer} representing a column in \code{table}}
}
\value{[\code{\link{AtkObject}}]  a AtkObject* representing the referred to accessible}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
