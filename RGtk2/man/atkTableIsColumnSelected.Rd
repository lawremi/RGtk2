\alias{atkTableIsColumnSelected}
\name{atkTableIsColumnSelected}
\title{atkTableIsColumnSelected}
\description{Gets a boolean value indicating whether the specified \code{column}
is selected}
\usage{atkTableIsColumnSelected(object, column)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\verb{column}}{[integer]  a \verb{integer} representing a column in \code{table}}
}
\value{[logical]  a gboolean representing if the column is selected, or 0
if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
