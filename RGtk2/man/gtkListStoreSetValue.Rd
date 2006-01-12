\alias{gtkListStoreSetValue}
\name{gtkListStoreSetValue}
\title{gtkListStoreSetValue}
\description{Sets the data in the cell specified by \code{iter} and \code{column}.
The type of \code{value} must be convertible to the type of the
column.}
\usage{gtkListStoreSetValue(object, iter, column, value)}
\arguments{
\item{\code{object}}{[\code{\link{GtkListStore}}]  A \code{\link{GtkListStore}}}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  A valid \code{\link{GtkTreeIter}} for the row being modified}
\item{\code{column}}{[integer]  column number to modify}
\item{\code{value}}{[R object]  new value for the cell}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
