\alias{gtkCListSetPixtext}
\name{gtkCListSetPixtext}
\title{gtkCListSetPixtext}
\description{
Sets text and a pixmap/bitmap on the specified cell.
\strong{WARNING: \code{gtk_clist_set_pixtext} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListSetPixtext(object, row, column, text, spacing, pixmap, 
    mask)}
\arguments{
\item{\verb{object}}{The \code{\link{GtkCList}} to affect.}
\item{\verb{row}}{The row of the cell.}
\item{\verb{column}}{The column of the cell.}
\item{\verb{text}}{The text to set in the cell.}
\item{\verb{spacing}}{The spacing between the cell's text and pixmap.}
\item{\verb{pixmap}}{A pointer to a \code{\link{GdkPixmap}} for the cell.}
\item{\verb{mask}}{A pointer to a \code{\link{GdkBitmap}} mask for the cell.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
