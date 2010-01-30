\alias{gtkCListGetPixmap}
\name{gtkCListGetPixmap}
\title{gtkCListGetPixmap}
\description{
Gets the pixmap and bitmap mask of the specified cell.  The returned mask value can be NULL.
\strong{WARNING: \code{gtk_clist_get_pixmap} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListGetPixmap(object, row, column)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCList}}] The \verb{\link{GtkCList}} to affect.}
\item{\verb{row}}{[integer] The row of the cell.}
\item{\verb{column}}{[integer] The column of the cell.}
}
\value{
A list containing the following elements:
\item{retval}{[integer] 1 if the cell's pixmap could be retrieved, 0 otherwise.}
\item{\verb{pixmap}}{[\verb{\link{GdkPixmap}}] A pointer to a pointer to store the cell's \verb{\link{GdkPixmap}}.}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}] A pointer to a pointer to store the cell's \verb{\link{GdkBitmap}} mask.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
