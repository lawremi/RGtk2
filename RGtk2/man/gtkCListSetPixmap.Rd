\alias{gtkCListSetPixmap}
\name{gtkCListSetPixmap}
\title{gtkCListSetPixmap}
\description{
Sets a pixmap for the specified cell.
\strong{WARNING: \code{gtk_clist_set_pixmap} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListSetPixmap(object, row, column, pixmap, mask = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} to affect.}
\item{\code{row}}{[integer] The row of the cell.}
\item{\code{column}}{[integer] The column of the cell.}
\item{\code{pixmap}}{[\code{\link{GdkPixmap}}] A pointer to a \code{\link{GdkPixmap}} to place in the cell.}
\item{\code{mask}}{[\code{\link{GdkBitmap}}] A pointer to a \code{\link{GdkBitmap}} mask for the cell.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
