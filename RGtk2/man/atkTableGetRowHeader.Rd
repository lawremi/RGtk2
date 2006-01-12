\alias{atkTableGetRowHeader}
\name{atkTableGetRowHeader}
\title{atkTableGetRowHeader}
\description{Gets the row header of a specified row in an accessible table.}
\usage{atkTableGetRowHeader(object, row)}
\arguments{
\item{\code{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\code{row}}{[integer]  a \code{integer} representing a row in the table}
}
\value{[\code{\link{AtkObject}}]  a AtkObject* representing the specified row header, or
\code{NULL} if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
