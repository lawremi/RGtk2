\alias{gtkCListSetPixtext}
\name{gtkCListSetPixtext}
\title{gtkCListSetPixtext}
\description{
Sets text and a pixmap/bitmap on the specified cell.
\strong{WARNING: \code{gtk_clist_set_pixtext} is deprecated and should not be used in newly-written code.  
Sets text and a pixmap/bitmap on the specified cell.}
}
\usage{gtkCListSetPixtext(object, row, column, text, spacing, pixmap, mask)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} to affect.}
\item{\code{row}}{[integer] The row of the cell.}
\item{\code{column}}{[integer] The column of the cell.}
\item{\code{text}}{[character] The text to set in the cell.}
\item{\code{spacing}}{[integer] The spacing between the cell's text and pixmap.}
\item{\code{pixmap}}{[\code{\link{GdkPixmap}}] A pointer to a \code{\link{GdkPixmap}} for the cell.}
\item{\code{mask}}{[\code{\link{GdkBitmap}}] A pointer to a \code{\link{GdkBitmap}} mask for the cell.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
