\alias{gtkPixmapGet}
\name{gtkPixmapGet}
\title{gtkPixmapGet}
\description{
Gets the current \verb{\link{GdkPixmap}} and \verb{\link{GdkBitmap}} mask.
\strong{WARNING: \code{gtk_pixmap_get} is deprecated and should not be used in newly-written code.}
}
\usage{gtkPixmapGet(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkPixmap}}] a \verb{\link{GtkPixmap}}.}}
\value{
A list containing the following elements:
\item{\verb{val}}{[\verb{\link{GdkPixmap}}] returns the current \verb{\link{GdkPixmap}}.}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}] returns the current \verb{\link{GdkBitmap}} mask.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
