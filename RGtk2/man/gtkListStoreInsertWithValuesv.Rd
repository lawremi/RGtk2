\alias{gtkListStoreInsertWithValuesv}
\name{gtkListStoreInsertWithValuesv}
\title{gtkListStoreInsertWithValuesv}
\description{A variant of \code{\link{gtkListStoreInsertWithValues}} which
takes the columns and values as two lists, instead of
varargs. This function is mainly intended for 
language-bindings.}
\usage{gtkListStoreInsertWithValuesv(object, position, columns, values)}
\arguments{
\item{\code{object}}{[\code{\link{GtkListStore}}]  A \code{\link{GtkListStore}}}
\item{\code{position}}{[integer]  position to insert the new row}
\item{\code{columns}}{[integer]  a list of column numbers}
\item{\code{values}}{[R object]  a list of GValues }
}
\details{  Since  2.6}
\value{
A list containing the following elements:
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  An unset \code{\link{GtkTreeIter}} to set to the new row, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
