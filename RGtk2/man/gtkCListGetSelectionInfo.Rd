\alias{gtkCListGetSelectionInfo}
\name{gtkCListGetSelectionInfo}
\title{gtkCListGetSelectionInfo}
\description{
Gets the row and column at the specified pixel position in the CList.
\strong{WARNING: \code{gtk_clist_get_selection_info} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListGetSelectionInfo(object, x, y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCList}}] The \verb{\link{GtkCList}} to affect.}
\item{\verb{x}}{[integer] The horizontal pixel position to check.}
\item{\verb{y}}{[integer] The vertical pixel position to check..}
}
\value{
A list containing the following elements:
\item{retval}{[integer] 1 if row/column is returned and in range, 0 otherwise.}
\item{\verb{row}}{[integer] Pointer to a \verb{integer} to store the row value.}
\item{\verb{column}}{[integer] Pointer to a \verb{integer} to store the column value.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
