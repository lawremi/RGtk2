\alias{gtkTreeStoreSetValuesv}
\name{gtkTreeStoreSetValuesv}
\title{gtkTreeStoreSetValuesv}
\description{A variant of \code{gtkTreeStoreSetValist()} which takes
the columns and values as two lists, instead of varargs.  This
function is mainly intended for language bindings or in case
the number of columns to change is not known until run-time.}
\usage{gtkTreeStoreSetValuesv(object, iter, columns, values)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeStore}}]  A \verb{\link{GtkTreeStore}}}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}} for the row being modified}
\item{\verb{columns}}{[integer]  a list of column numbers}
\item{\verb{values}}{[R object]  a list of GValues}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
