\alias{gtkListStoreSetValue}
\name{gtkListStoreSetValue}
\title{gtkListStoreSetValue}
\description{Sets the data in the cell specified by \code{iter} and \code{column}.
The type of \code{value} must be convertible to the type of the
column.}
\usage{gtkListStoreSetValue(object, iter, column, value)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkListStore}}]  A \verb{\link{GtkListStore}}}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}} for the row being modified}
\item{\verb{column}}{[integer]  column number to modify}
\item{\verb{value}}{[R object]  new value for the cell}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
