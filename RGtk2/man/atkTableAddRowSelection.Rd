\alias{atkTableAddRowSelection}
\name{atkTableAddRowSelection}
\title{atkTableAddRowSelection}
\description{Adds the specified \code{row} to the selection.}
\usage{atkTableAddRowSelection(object, row)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\verb{row}}{[integer]  a \verb{integer} representing a row in \code{table}}
}
\value{[logical]  a gboolean representing if row was successfully added to selection,
or 0 if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
