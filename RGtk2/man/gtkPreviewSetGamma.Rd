\alias{gtkPreviewSetGamma}
\name{gtkPreviewSetGamma}
\title{gtkPreviewSetGamma}
\description{
Set the gamma-correction value for all preview widgets.
(This function will eventually be replaced with a
function that sets a per-preview-widget gamma value).
The resulting intensity is given by:
\code{destination_value * pow (source_value/255, 1/gamma)}.
The gamma value is applied when the data is
set with \code{\link{gtkPreviewDrawRow}} so changing this
value will not affect existing data in preview
widgets.
\strong{WARNING: \code{gtk_preview_set_gamma} is deprecated and should not be used in newly-written code.}
}
\usage{gtkPreviewSetGamma(gamma)}
\arguments{\item{\verb{gamma}}{the new gamma value.}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
