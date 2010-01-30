\alias{gtkDrawVline}
\name{gtkDrawVline}
\title{gtkDrawVline}
\description{
Draws a vertical line from (\code{x}, \code{y1.}) to (\code{x}, \code{y2.}) in \code{window}
using the given style and state.
\strong{WARNING: \code{gtk_draw_vline} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintVline}} instead.}
}
\usage{gtkDrawVline(object, window, state.type, y1, y2, x)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{y1}}{[integer]  the starting y coordinate}
\item{\verb{y2}}{[integer]  the ending y coordinate}
\item{\verb{x}}{[integer]  the x coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
