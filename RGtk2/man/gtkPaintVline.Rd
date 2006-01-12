\alias{gtkPaintVline}
\name{gtkPaintVline}
\title{gtkPaintVline}
\description{Draws a vertical line from (\code{x}, \code{y1.}) to (\code{x}, \code{y2.}) in \code{window}
using the given style and state.}
\usage{gtkPaintVline(object, window, state.type, area = NULL, widget = NULL, detail = NULL, y1, y2, x)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  rectangle to which the output is clipped, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{y1}}{[integer]  the starting y coordinate}
\item{\code{y2}}{[integer]  the ending y coordinate}
\item{\code{x}}{[integer]  the x coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
