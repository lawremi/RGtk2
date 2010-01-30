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
\item{\verb{object}}{[\verb{\link{GtkPreview}}] a \verb{\link{GtkPreview}}.}
\item{\verb{window}}{[\verb{\link{GdkWindow}}] a window or pixmap.}
\item{\verb{gc}}{[\verb{\link{GdkGC}}] The graphics context for the operation. Only the
     clip mask for this GC matters.}
\item{\verb{srcx}}{[integer] the x coordinate of the upper left corner in the source image.}
\item{\verb{srcy}}{[integer] the y coordinate of the upper left corner in the source image.}
\item{\verb{destx}}{[integer] the x coordinate of the upper left corner in the destination image.}
\item{\verb{desty}}{[integer] the y coordinate of the upper left corner in the destination image.}
\item{\verb{width}}{[integer] the width of the rectangular portion to draw.}
\item{\verb{height}}{[integer] the height of the rectangular portion to draw.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
