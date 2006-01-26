\alias{gtkPreviewPut}
\name{gtkPreviewPut}
\title{gtkPreviewPut}
\description{
Takes a portion of the contents of a preview widget
and draws it onto the given drawable, \code{window}.
\strong{WARNING: \code{gtk_preview_put} is deprecated and should not be used in newly-written code.}
}
\usage{gtkPreviewPut(object, window, gc, srcx, srcy, destx, desty, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPreview}}] a \code{\link{GtkPreview}}.}
\item{\code{window}}{[\code{\link{GdkWindow}}] a window or pixmap.}
\item{\code{gc}}{[\code{\link{GdkGC}}] The graphics context for the operation. Only the
     clip mask for this GC matters.}
\item{\code{srcx}}{[integer] the x coordinate of the upper left corner in the source image.}
\item{\code{srcy}}{[integer] the y coordinate of the upper left corner in the source image.}
\item{\code{destx}}{[integer] the x coordinate of the upper left corner in the destination image.}
\item{\code{desty}}{[integer] the y coordinate of the upper left corner in the destination image.}
\item{\code{width}}{[integer] the width of the rectangular portion to draw.}
\item{\code{height}}{[integer] the height of the rectangular portion to draw.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
