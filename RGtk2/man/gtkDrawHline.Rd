\alias{gtkDrawHline}
\name{gtkDrawHline}
\title{gtkDrawHline}
\description{
Draws a horizontal line from (\code{x1}, \code{y}) to (\code{x2}, \code{y}) in \code{window}
using the given style and state.
\strong{WARNING: \code{gtk_draw_hline} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintHline}} instead.}
}
\usage{gtkDrawHline(object, window, state.type, x1, x2, y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{x1}}{the starting x coordinate}
\item{\verb{x2}}{the ending x coordinate}
\item{\verb{y}}{the y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
