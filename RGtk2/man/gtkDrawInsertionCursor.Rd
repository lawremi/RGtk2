\alias{gtkDrawInsertionCursor}
\name{gtkDrawInsertionCursor}
\title{gtkDrawInsertionCursor}
\description{Draws a text caret on \code{drawable} at \code{location}. This is not a style function
but merely a convenience function for drawing the standard cursor shape.}
\usage{gtkDrawInsertionCursor(widget, drawable, area = NULL, location, 
    is.primary, direction, draw.arrow)}
\arguments{
\item{\verb{widget}}{a \code{\link{GtkWidget}}}
\item{\verb{drawable}}{a \code{\link{GdkDrawable}}}
\item{\verb{area}}{rectangle to which the output is clipped, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{location}}{location where to draw the cursor (\code{location->width} is ignored)}
\item{\verb{is.primary}}{if the cursor should be the primary cursor color.}
\item{\verb{direction}}{whether the cursor is left-to-right or
right-to-left. Should never be \verb{GTK_TEXT_DIR_NONE}}
\item{\verb{draw.arrow}}{\code{TRUE} to draw a directional arrow on the
cursor. Should be \code{FALSE} unless the cursor is split.}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
