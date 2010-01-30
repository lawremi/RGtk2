\alias{gtkCListSetPixmap}
\name{gtkCListSetPixmap}
\title{gtkCListSetPixmap}
\description{
Sets a pixmap for the specified cell.
\strong{WARNING: \code{gtk_clist_set_pixmap} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListSetPixmap(object, row, column, pixmap, mask = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCList}}] The \verb{\link{GtkCList}} to affect.}
\item{\verb{row}}{[integer] The row of the cell.}
\item{\verb{column}}{[integer] The column of the cell.}
\item{\verb{pixmap}}{[\verb{\link{GdkPixmap}}] A pointer to a \verb{\link{GdkPixmap}} to place in the cell.}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}] A pointer to a \verb{\link{GdkBitmap}} mask for the cell.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
