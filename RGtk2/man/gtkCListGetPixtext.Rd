\alias{gtkCListGetPixtext}
\name{gtkCListGetPixtext}
\title{gtkCListGetPixtext}
\description{
Gets the text, pixmap and bitmap mask for the specified cell.
\strong{WARNING: \code{gtk_clist_get_pixtext} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListGetPixtext(object, row, column)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCList}}] The \verb{\link{GtkCList}} to affect.}
\item{\verb{row}}{[integer] The row to query.}
\item{\verb{column}}{[integer] The column to query.}
}
\value{
A list containing the following elements:
\item{retval}{[integer] 1 if the retrieval was successful, 0 otherwise.}
\item{\verb{text}}{[character] A pointer to a pointer to store the text.}
\item{\verb{spacing}}{[raw] A pointer to a \verb{raw} to store the spacing.}
\item{\verb{pixmap}}{[\verb{\link{GdkPixmap}}] A pointer to a \verb{\link{GdkPixmap}} pointer to store the cell's pixmap.}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}] A pointer to a \verb{\link{GdkBitmap}} pointer to store the cell's bitmap mask.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
