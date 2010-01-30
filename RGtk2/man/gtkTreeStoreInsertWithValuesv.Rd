\alias{gtkTreeStoreInsertWithValuesv}
\name{gtkTreeStoreInsertWithValuesv}
\title{gtkTreeStoreInsertWithValuesv}
\description{A variant of \code{\link{gtkTreeStoreInsertWithValues}} which takes
the columns and values as two lists, instead of varargs.  This
function is mainly intended for language bindings.}
\usage{gtkTreeStoreInsertWithValuesv(object, parent, position, columns, values)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeStore}}]  A \verb{\link{GtkTreeStore}}}
\item{\verb{parent}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}}, or \code{NULL}}
\item{\verb{position}}{[integer]  position to insert the new row}
\item{\verb{columns}}{[integer]  a list of column numbers}
\item{\verb{values}}{[R object]  a list of GValues}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
