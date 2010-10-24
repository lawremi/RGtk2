\alias{gtkDrawingAreaSize}
\name{gtkDrawingAreaSize}
\title{gtkDrawingAreaSize}
\description{
Sets the size that the drawing area will request
in response to a "size_request" signal. The
drawing area may actually be allocated a size
larger than this depending on how it is packed
within the enclosing containers.
\strong{WARNING: \code{gtk_drawing_area_size} is deprecated and should not be used in newly-written code. Use \code{\link{gtkWidgetSetSizeRequest}} instead.}
}
\usage{gtkDrawingAreaSize(object, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkDrawingArea}}}
\item{\verb{width}}{the width to request}
\item{\verb{height}}{the height to request}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
