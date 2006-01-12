\alias{atkTableGetColumnAtIndex}
\name{atkTableGetColumnAtIndex}
\title{atkTableGetColumnAtIndex}
\description{Gets a \code{integer} representing the column at the specified \code{index.}, or -1
if the table does not implement this interface}
\usage{atkTableGetColumnAtIndex(object, index)}
\arguments{
\item{\code{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableInterface}
\item{\code{index}}{[integer]  a \code{integer} representing an index in \code{table}}
}
\value{[integer]  a gint representing the column at the specified index.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
