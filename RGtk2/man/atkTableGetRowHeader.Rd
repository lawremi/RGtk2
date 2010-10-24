\alias{atkTableGetRowHeader}
\name{atkTableGetRowHeader}
\title{atkTableGetRowHeader}
\description{Gets the row header of a specified row in an accessible table.}
\usage{atkTableGetRowHeader(object, row)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\verb{row}}{[integer]  a \verb{integer} representing a row in the table}
}
\value{[\code{\link{AtkObject}}]  a AtkObject* representing the specified row header, or
\code{NULL} if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
