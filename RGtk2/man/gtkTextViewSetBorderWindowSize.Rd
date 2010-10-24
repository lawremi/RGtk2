\alias{gtkTextViewSetBorderWindowSize}
\name{gtkTextViewSetBorderWindowSize}
\title{gtkTextViewSetBorderWindowSize}
\description{Sets the width of \code{GTK_TEXT_WINDOW_LEFT} or \code{GTK_TEXT_WINDOW_RIGHT},
or the height of \code{GTK_TEXT_WINDOW_TOP} or \code{GTK_TEXT_WINDOW_BOTTOM}.
Automatically destroys the corresponding window if the size is set
to 0, and creates the window if the size is set to non-zero.  This
function can only be used for the "border windows," it doesn't work
with \verb{GTK_TEXT_WINDOW_WIDGET}, \verb{GTK_TEXT_WINDOW_TEXT}, or
\verb{GTK_TEXT_WINDOW_PRIVATE}.}
\usage{gtkTextViewSetBorderWindowSize(object, type, size)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextView}}}
\item{\verb{type}}{window to affect}
\item{\verb{size}}{width or height of the window}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
