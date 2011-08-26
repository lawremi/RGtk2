\alias{gtkPreviewDrawRow}
\name{gtkPreviewDrawRow}
\title{gtkPreviewDrawRow}
\description{
Sets the data for a portion of a row.
\strong{WARNING: \code{gtk_preview_draw_row} is deprecated and should not be used in newly-written code.}
}
\usage{gtkPreviewDrawRow(object, data, y, w)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPreview}}.}
\item{\verb{data}}{the new data for the portion. It should contain
\code{w} bytes of data if the preview is of type
GTK_TYPE_GRAYSCALE, and 3*\code{w} bytes of data
if the preview is of type GTK_TYPE_COLOR.}
\item{\verb{y}}{the row to change.}
\item{\verb{w}}{the number of pixels in the row to change.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
