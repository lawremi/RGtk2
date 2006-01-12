\alias{gtkDrawInsertionCursor}
\name{gtkDrawInsertionCursor}
\title{gtkDrawInsertionCursor}
\description{Draws a text caret on \code{drawable} at \code{location}. This is not a style function
but merely a convenience function for drawing the standard cursor shape.}
\usage{gtkDrawInsertionCursor(widget, drawable, area = NULL, location, is.primary, direction, draw.arrow)}
\arguments{
\item{\code{widget}}{[\code{\link{GtkWidget}}]   a \code{\link{GtkWidget}}}
\item{\code{drawable}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}} }
\item{\code{area}}{[\code{\link{GdkRectangle}}]  rectangle to which the output is clipped, or \code{NULL} if the
       output should not be clipped}
\item{\code{location}}{[\code{\link{GdkRectangle}}]  location where to draw the cursor (\code{location->width} is ignored)}
\item{\code{is.primary}}{[logical]  if the cursor should be the primary cursor color.}
\item{\code{direction}}{[\code{\link{GtkTextDirection}}]  whether the cursor is left-to-right or
            right-to-left. Should never be \code{GTK_TEXT_DIR_NONE}}
\item{\code{draw.arrow}}{[logical]  \code{TRUE} to draw a directional arrow on the
       cursor. Should be \code{FALSE} unless the cursor is split.}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
