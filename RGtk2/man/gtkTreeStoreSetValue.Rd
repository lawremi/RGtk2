\alias{gtkTreeStoreSetValue}
\name{gtkTreeStoreSetValue}
\title{gtkTreeStoreSetValue}
\description{Sets the data in the cell specified by \code{iter} and \code{column}.
The type of \code{value} must be convertible to the type of the
column.}
\usage{gtkTreeStoreSetValue(object, iter, column, value)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeStore}}]  a \code{\link{GtkTreeStore}}}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  A valid \code{\link{GtkTreeIter}} for the row being modified}
\item{\code{column}}{[integer]  column number to modify}
\item{\code{value}}{[R object]  new value for the cell}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
