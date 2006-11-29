\alias{gtkTreeStoreInsertWithValuesv}
\name{gtkTreeStoreInsertWithValuesv}
\title{gtkTreeStoreInsertWithValuesv}
\description{A variant of \code{\link{gtkTreeStoreInsertWithValues}} which takes
the columns and values as two lists, instead of varargs.  This
function is mainly intended for language bindings.}
\usage{gtkTreeStoreInsertWithValuesv(object, parent, position, columns, values)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeStore}}]  A \code{\link{GtkTreeStore}}}
\item{\code{parent}}{[\code{\link{GtkTreeIter}}]  A valid \code{\link{GtkTreeIter}}, or \code{NULL}}
\item{\code{position}}{[integer]  position to insert the new row}
\item{\code{columns}}{[integer]  a list of column numbers}
\item{\code{values}}{[R object]  a list of GValues}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
