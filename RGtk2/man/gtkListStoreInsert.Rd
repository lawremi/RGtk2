\alias{gtkListStoreInsert}
\name{gtkListStoreInsert}
\title{gtkListStoreInsert}
\description{Creates a new row at \code{position}.  \code{iter} will be changed to point to this new
row.  If \code{position} is larger than the number of rows on the list, then the
new row will be appended to the list. The row will be empty after this
function is called.  To fill in values, you need to call 
\code{\link{gtkListStoreSet}} or \code{\link{gtkListStoreSetValue}}.}
\usage{gtkListStoreInsert(object, position)}
\arguments{
\item{\code{object}}{[\code{\link{GtkListStore}}]  A \code{\link{GtkListStore}}}
\item{\code{position}}{[integer]  position to insert the new row}
}
\value{
A list containing the following elements:
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  An unset \code{\link{GtkTreeIter}} to set to the new row}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
