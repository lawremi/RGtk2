\alias{gtkPixmapSet}
\name{gtkPixmapSet}
\title{gtkPixmapSet}
\description{
Sets the \verb{\link{GdkPixmap}} and \verb{\link{GdkBitmap}} mask.
\strong{WARNING: \code{gtk_pixmap_set} is deprecated and should not be used in newly-written code.}
}
\usage{gtkPixmapSet(object, val, mask = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkPixmap}}] a \verb{\link{GtkPixmap}}.}
\item{\verb{val}}{[\verb{\link{GdkPixmap}}] a \verb{\link{GdkPixmap}}.}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}] a \verb{\link{GdkBitmap}}, which indicates which parts of the \code{pixmap} should be
transparent. This can be NULL, in which case none of the \code{pixmap} is
transparent.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
