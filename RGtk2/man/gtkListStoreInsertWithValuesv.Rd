\alias{gtkListStoreInsertWithValuesv}
\name{gtkListStoreInsertWithValuesv}
\title{gtkListStoreInsertWithValuesv}
\description{A variant of \code{\link{gtkListStoreInsertWithValues}} which
takes the columns and values as two lists, instead of
varargs. This function is mainly intended for 
language-bindings.}
\usage{gtkListStoreInsertWithValuesv(object, position, columns, values)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkListStore}}}
\item{\verb{position}}{position to insert the new row}
\item{\verb{columns}}{a list of column numbers}
\item{\verb{values}}{a list of GValues}
}
\details{Since 2.6}
\value{
A list containing the following elements:
\item{\verb{iter}}{An unset \code{\link{GtkTreeIter}} to set to the new row, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
