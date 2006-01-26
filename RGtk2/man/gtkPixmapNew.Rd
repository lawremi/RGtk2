\alias{gtkPixmapNew}
\name{gtkPixmapNew}
\title{gtkPixmapNew}
\description{
Creates a new \code{\link{GtkPixmap}}, using the given GDK pixmap and mask.
\strong{WARNING: \code{gtk_pixmap_new} is deprecated and should not be used in newly-written code.}
}
\usage{gtkPixmapNew(pixmap, mask = NULL, show = TRUE)}
\arguments{
\item{\code{pixmap}}{[\code{\link{GdkPixmap}}] a \code{GDKPixmap}.}
\item{\code{mask}}{[\code{\link{GdkBitmap}}] a \code{GDKBitmap} which indicates which parts of the \code{pixmap} should be
transparent.}
}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkPixmap}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
