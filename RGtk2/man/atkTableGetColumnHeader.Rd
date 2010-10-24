\alias{atkTableGetColumnHeader}
\name{atkTableGetColumnHeader}
\title{atkTableGetColumnHeader}
\description{Gets the column header of a specified column in an accessible table.}
\usage{atkTableGetColumnHeader(object, column)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\verb{column}}{[integer]  a \verb{integer} representing a column in the table}
}
\value{[\code{\link{AtkObject}}]  a AtkObject* representing the specified column header, or
\code{NULL} if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
