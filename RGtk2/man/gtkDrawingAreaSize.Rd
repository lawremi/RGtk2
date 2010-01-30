\alias{gtkDrawingAreaSize}
\name{gtkDrawingAreaSize}
\title{gtkDrawingAreaSize}
\description{
(Use \code{\link{gtkWidgetSetSizeRequest}} instead.)
Sets the size that the drawing area will request
in response to a "size_request" signal. The 
drawing area may actually be allocated a size
larger than this depending on how it is packed
within the enclosing containers.
\strong{WARNING: \code{gtk_drawing_area_size} is deprecated and should not be used in newly-written code.}
}
\usage{gtkDrawingAreaSize(object, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkDrawingArea}}] a \verb{\link{GtkDrawingArea}}.}
\item{\verb{width}}{[integer] the width to request.}
\item{\verb{height}}{[integer] the height to request.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
