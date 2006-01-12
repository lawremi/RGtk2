\alias{atkTableIsRowSelected}
\name{atkTableIsRowSelected}
\title{atkTableIsRowSelected}
\description{Gets a boolean value indicating whether the specified \code{row}
is selected}
\usage{atkTableIsRowSelected(object, row)}
\arguments{
\item{\code{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\code{row}}{[integer]  a \code{integer} representing a row in \code{table}}
}
\value{[logical]  a gboolean representing if the row is selected, or 0
if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
