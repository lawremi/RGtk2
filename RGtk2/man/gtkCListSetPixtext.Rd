\alias{gtkCListSetPixtext}
\name{gtkCListSetPixtext}
\title{gtkCListSetPixtext}
\description{
Sets text and a pixmap/bitmap on the specified cell.
\strong{WARNING: \code{gtk_clist_set_pixtext} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListSetPixtext(object, row, column, text, spacing, pixmap, mask)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCList}}] The \verb{\link{GtkCList}} to affect.}
\item{\verb{row}}{[integer] The row of the cell.}
\item{\verb{column}}{[integer] The column of the cell.}
\item{\verb{text}}{[character] The text to set in the cell.}
\item{\verb{spacing}}{[raw] The spacing between the cell's text and pixmap.}
\item{\verb{pixmap}}{[\verb{\link{GdkPixmap}}] A pointer to a \verb{\link{GdkPixmap}} for the cell.}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}] A pointer to a \verb{\link{GdkBitmap}} mask for the cell.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
