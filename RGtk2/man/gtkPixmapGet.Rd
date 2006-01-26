\alias{gtkPixmapGet}
\name{gtkPixmapGet}
\title{gtkPixmapGet}
\description{
Gets the current \code{\link{GdkPixmap}} and \code{\link{GdkBitmap}} mask.
\strong{WARNING: \code{gtk_pixmap_get} is deprecated and should not be used in newly-written code.}
}
\usage{gtkPixmapGet(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkPixmap}}] a \code{\link{GtkPixmap}}.}}
\value{
A list containing the following elements:
\item{\code{val}}{[\code{\link{GdkPixmap}}] returns the current \code{\link{GdkPixmap}}.}
\item{\code{mask}}{[\code{\link{GdkBitmap}}] returns the current \code{\link{GdkBitmap}} mask.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
