\alias{atkTableGetRowAtIndex}
\name{atkTableGetRowAtIndex}
\title{atkTableGetRowAtIndex}
\description{Gets a \code{integer} representing the row at the specified \code{index.}.}
\usage{atkTableGetRowAtIndex(object, index)}
\arguments{
\item{\code{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableInterface}
\item{\code{index}}{[integer]  a \code{integer} representing an index in \code{table}}
}
\value{[integer]  a gint representing the row at the specified index,
or -1 if the table does not implement this interface}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
