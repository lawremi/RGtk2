\alias{atkTableGetSelectedRows}
\name{atkTableGetSelectedRows}
\title{atkTableGetSelectedRows}
\description{Gets the selected rows of the table by initializing **selected with 
the selected row numbers.}
\usage{atkTableGetSelectedRows(object)}
\arguments{\item{\code{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}}
\value{
A list containing the following elements:
\item{retval}{[integer]  a gint representing the number of selected rows,
or zero if value does not implement this interface.}
\item{\code{selected}}{[integer]  a \code{integer}** that is to contain the selected row numbers}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
