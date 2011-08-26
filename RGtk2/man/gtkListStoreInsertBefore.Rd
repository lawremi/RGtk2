\alias{gtkListStoreInsertBefore}
\name{gtkListStoreInsertBefore}
\title{gtkListStoreInsertBefore}
\description{Inserts a new row before \code{sibling}. If \code{sibling} is \code{NULL}, then the row will 
be appended to the end of the list. \code{iter} will be changed to point to this 
new row. The row will be empty after this function is called. To fill in 
values, you need to call \code{\link{gtkListStoreSet}} or \code{\link{gtkListStoreSetValue}}.}
\usage{gtkListStoreInsertBefore(object, sibling)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkListStore}}}
\item{\verb{sibling}}{A valid \code{\link{GtkTreeIter}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\value{
A list containing the following elements:
\item{\verb{iter}}{An unset \code{\link{GtkTreeIter}} to set to the new row}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
