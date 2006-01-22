\alias{gtkCListGetSelectionInfo}
\name{gtkCListGetSelectionInfo}
\title{gtkCListGetSelectionInfo}
\description{
Gets the row and column at the specified pixel position in the CList.
\strong{WARNING: \code{gtk_clist_get_selection_info} is deprecated and should not be used in newly-written code.  
Gets the row and column at the specified pixel position in the CList.}
}
\usage{gtkCListGetSelectionInfo(object, x, y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} to affect.}
\item{\code{x}}{[integer] The horizontal pixel position to check.}
\item{\code{y}}{[integer] The vertical pixel position to check..}
}
\value{
A list containing the following elements:
\item{retval}{[integer] 1 if row/column is returned and in range, 0 otherwise.}
\item{\code{row}}{[integer] Pointer to a \code{integer} to store the row value.}
\item{\code{column}}{[integer] Pointer to a \code{integer} to store the column value.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
