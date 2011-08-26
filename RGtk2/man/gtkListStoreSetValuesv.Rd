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
\item{\verb{object}}{A \code{\link{GtkListStore}}}
\item{\verb{iter}}{A valid \code{\link{GtkTreeIter}} for the row being modified}
\item{\verb{columns}}{a list of column numbers. \emph{[  \acronym{array}   length=n_values]}}
\item{\verb{values}}{a list of GValues. \emph{[  \acronym{array}   length=n_values]}}
}
\details{Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
