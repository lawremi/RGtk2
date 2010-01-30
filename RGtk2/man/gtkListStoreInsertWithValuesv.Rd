\alias{gtkListStoreInsertWithValuesv}
\name{gtkListStoreInsertWithValuesv}
\title{gtkListStoreInsertWithValuesv}
\description{A variant of \code{\link{gtkListStoreInsertWithValues}} which
takes the columns and values as two lists, instead of
varargs. This function is mainly intended for 
language-bindings.}
\usage{gtkListStoreInsertWithValuesv(object, position, columns, values)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkListStore}}]  A \verb{\link{GtkListStore}}}
\item{\verb{position}}{[integer]  position to insert the new row}
\item{\verb{columns}}{[integer]  a list of column numbers}
\item{\verb{values}}{[R object]  a list of GValues }
}
\details{  Since  2.6}
\value{
A list containing the following elements:
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  An unset \verb{\link{GtkTreeIter}} to set to the new row, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
