\alias{atkTableGetColumnAtIndex}
\name{atkTableGetColumnAtIndex}
\title{atkTableGetColumnAtIndex}
\description{Gets a \verb{integer} representing the column at the specified \code{index.}.}
\usage{atkTableGetColumnAtIndex(object, index)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableInterface}
\item{\verb{index}}{[integer]  a \verb{integer} representing an index in \code{table}}
}
\value{[integer]  a gint representing the column at the specified index,
or -1 if the table does not implement this interface}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
