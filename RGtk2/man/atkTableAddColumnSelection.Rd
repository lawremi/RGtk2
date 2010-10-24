\alias{atkTableAddColumnSelection}
\name{atkTableAddColumnSelection}
\title{atkTableAddColumnSelection}
\description{Adds the specified \code{column} to the selection.}
\usage{atkTableAddColumnSelection(object, column)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\verb{column}}{[integer]  a \verb{integer} representing a column in \code{table}}
}
\value{[logical]  a gboolean representing if the column was successfully added to 
the selection, or 0 if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
