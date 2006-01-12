\alias{gtkCListGetPixtext}
\name{gtkCListGetPixtext}
\title{gtkCListGetPixtext}
\description{
Gets the text, pixmap and bitmap mask for the specified cell.
\strong{WARNING: \code{gtk_clist_get_pixtext} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListGetPixtext(object, row, column)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} to affect.}
\item{\code{row}}{[integer] The row to query.}
\item{\code{column}}{[integer] The column to query.}
}
\value{
A list containing the following elements:
\item{retval}{[integer] 1 if the retrieval was successful, 0 otherwise.}
\item{\code{text}}{[character] A pointer to a pointer to store the text.}
\item{\code{spacing}}{[integer] A pointer to a \code{integer} to store the spacing.}
\item{\code{pixmap}}{[\code{\link{GdkPixmap}}] A pointer to a \code{\link{GdkPixmap}} pointer to store the cell's pixmap.}
\item{\code{mask}}{[\code{\link{GdkBitmap}}] A pointer to a \code{\link{GdkBitmap}} pointer to store the cell's bitmap mask.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
