\alias{gtkDrawVline}
\name{gtkDrawVline}
\title{gtkDrawVline}
\description{
Draws a vertical line from (\code{x}, \code{y1.}) to (\code{x}, \code{y2.}) in \code{window}
using the given style and state.
\strong{WARNING: \code{gtk_draw_vline} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintVline}} instead.}
}
\usage{gtkDrawVline(object, window, state.type, y1, y2, x)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{y1}}{the starting y coordinate}
\item{\verb{y2}}{the ending y coordinate}
\item{\verb{x}}{the x coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
