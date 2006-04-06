\alias{gtkPreviewDrawRow}
\name{gtkPreviewDrawRow}
\title{gtkPreviewDrawRow}
\description{
Sets the data for a portion of a row.
\strong{WARNING: \code{gtk_preview_draw_row} is deprecated and should not be used in newly-written code.}
}
\usage{gtkPreviewDrawRow(object, data, y, w)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPreview}}] a \code{\link{GtkPreview}}.}
\item{\code{data}}{[raw] the new data for the portion. It should contain
       \code{w} bytes of data if the preview is of type
       GTK\_TYPE\_GRAYSCALE, and 3*\code{w} bytes of data
       if the preview is of type GTK\_TYPE\_COLOR.}
\item{\code{y}}{[integer] the row to change.}
\item{\code{w}}{[integer] the number of pixels in the row to change.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
