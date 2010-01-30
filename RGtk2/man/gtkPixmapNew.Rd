\alias{gtkPixmapNew}
\name{gtkPixmapNew}
\title{gtkPixmapNew}
\description{
Creates a new \verb{\link{GtkPixmap}}, using the given GDK pixmap and mask.
\strong{WARNING: \code{gtk_pixmap_new} is deprecated and should not be used in newly-written code.}
}
\usage{gtkPixmapNew(pixmap, mask = NULL, show = TRUE)}
\arguments{
\item{\verb{pixmap}}{[\verb{\link{GdkPixmap}}] a \verb{GDKPixmap}.}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}] a \verb{GDKBitmap} which indicates which parts of the \code{pixmap} should be
transparent.}
}
\value{[\verb{\link{GtkWidget}}] a new \verb{\link{GtkPixmap}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
