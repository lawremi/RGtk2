\alias{atkTableGetRowDescription}
\name{atkTableGetRowDescription}
\title{atkTableGetRowDescription}
\description{Gets the description text of the specified row in the table}
\usage{atkTableGetRowDescription(object, row)}
\arguments{
\item{\code{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}
\item{\code{row}}{[integer]  a \code{integer} representing a row in \code{table}}
}
\value{[character]  a gchar* representing the row description, or \code{NULL}
if value does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
