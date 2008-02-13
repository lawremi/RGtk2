\alias{gtkListStoreSetValuesv}
\name{gtkListStoreSetValuesv}
\title{gtkListStoreSetValuesv}
\description{A variant of \code{gtkListStoreSetValist()} which
takes the columns and values as two lists, instead of
varargs. This function is mainly intended for 
language-bindings and in case the number of columns to
change is not known until run-time.}
\usage{gtkListStoreSetValuesv(object, iter, columns, values)}
\arguments{
\item{\code{object}}{[\code{\link{GtkListStore}}]  A \code{\link{GtkListStore}}}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  A valid \code{\link{GtkTreeIter}} for the row being modified}
\item{\code{columns}}{[integer]  a list of column numbers}
\item{\code{values}}{[R object]  a list of GValues }
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
