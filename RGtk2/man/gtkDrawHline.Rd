\alias{gtkDrawHline}
\name{gtkDrawHline}
\title{gtkDrawHline}
\description{
Draws a horizontal line from (\code{x1}, \code{y}) to (\code{x2}, \code{y}) in \code{window}
using the given style and state.
\strong{WARNING: \code{gtk_draw_hline} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintHline}} instead.}
}
\usage{gtkDrawHline(object, window, state.type, x1, x2, y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{x1}}{[integer]  the starting x coordinate}
\item{\code{x2}}{[integer]  the ending x coordinate}
\item{\code{y}}{[integer]  the y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
