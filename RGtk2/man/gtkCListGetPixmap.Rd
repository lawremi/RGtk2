\alias{gtkCListGetPixmap}
\name{gtkCListGetPixmap}
\title{gtkCListGetPixmap}
\description{
Gets the pixmap and bitmap mask of the specified cell.  The returned mask value can be NULL.
\strong{WARNING: \code{gtk_clist_get_pixmap} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListGetPixmap(object, row, column)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} to affect.}
\item{\code{row}}{[integer] The row of the cell.}
\item{\code{column}}{[integer] The column of the cell.}
}
\value{
A list containing the following elements:
\item{retval}{[integer] 1 if the cell's pixmap could be retrieved, 0 otherwise.}
\item{\code{pixmap}}{[\code{\link{GdkPixmap}}] A pointer to a pointer to store the cell's \code{\link{GdkPixmap}}.}
\item{\code{mask}}{[\code{\link{GdkBitmap}}] A pointer to a pointer to store the cell's \code{\link{GdkBitmap}} mask.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
