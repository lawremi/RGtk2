\alias{gtkTreeStoreInsertWithValuesv}
\name{gtkTreeStoreInsertWithValuesv}
\title{gtkTreeStoreInsertWithValuesv}
\description{A variant of \code{\link{gtkTreeStoreInsertWithValues}} which takes
the columns and values as two lists, instead of varargs.  This
function is mainly intended for language bindings.}
\usage{gtkTreeStoreInsertWithValuesv(object, parent, position, columns, 
    values)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeStore}}}
\item{\verb{parent}}{A valid \code{\link{GtkTreeIter}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{position}}{position to insert the new row}
\item{\verb{columns}}{a list of column numbers}
\item{\verb{values}}{a list of GValues}
}
\details{Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
