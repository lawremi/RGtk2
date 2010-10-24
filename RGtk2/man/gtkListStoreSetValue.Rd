\alias{gtkListStoreSetValue}
\name{gtkListStoreSetValue}
\title{gtkListStoreSetValue}
\description{Sets the data in the cell specified by \code{iter} and \code{column}.
The type of \code{value} must be convertible to the type of the
column.}
\usage{gtkListStoreSetValue(object, iter, column, value)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkListStore}}}
\item{\verb{iter}}{A valid \code{\link{GtkTreeIter}} for the row being modified}
\item{\verb{column}}{column number to modify}
\item{\verb{value}}{new value for the cell}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
