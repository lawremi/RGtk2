\alias{gtkPixmapSet}
\name{gtkPixmapSet}
\title{gtkPixmapSet}
\description{
Sets the \code{\link{GdkPixmap}} and \code{\link{GdkBitmap}} mask.
\strong{WARNING: \code{gtk_pixmap_set} is deprecated and should not be used in newly-written code.  
Sets the \code{\link{GdkPixmap}} and \code{\link{GdkBitmap}} mask.}
}
\usage{gtkPixmapSet(object, val, mask = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPixmap}}] a \code{\link{GtkPixmap}}.}
\item{\code{val}}{[\code{\link{GdkPixmap}}] a \code{\link{GdkPixmap}}.}
\item{\code{mask}}{[\code{\link{GdkBitmap}}] a \code{\link{GdkBitmap}}, which indicates which parts of the \code{pixmap} should be
transparent. This can be NULL, in which case none of the \code{pixmap} is
transparent.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
