\alias{gtkDrawVline}
\name{gtkDrawVline}
\title{gtkDrawVline}
\description{
Draws a vertical line from (\code{x}, \code{y1.}) to (\code{x}, \code{y2.}) in \code{window}
using the given style and state.
\strong{WARNING: \code{gtk_draw_vline} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintVline}} instead.  
Draws a vertical line from (\code{x}, \code{y1.}) to (\code{x}, \code{y2.}) in \code{window}
using the given style and state.  }
}
\usage{gtkDrawVline(object, window, state.type, y1, y2, x)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{y1}}{[integer]  the starting y coordinate}
\item{\code{y2}}{[integer]  the ending y coordinate}
\item{\code{x}}{[integer]  the x coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
