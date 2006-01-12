\alias{gtkPaintHline}
\name{gtkPaintHline}
\title{gtkPaintHline}
\description{Draws a horizontal line from (\code{x1}, \code{y}) to (\code{x2}, \code{y}) in \code{window}
using the given style and state.}
\usage{gtkPaintHline(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x1, x2, y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  rectangle to which the output is clipped, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{x1}}{[integer]  the starting x coordinate}
\item{\code{x2}}{[integer]  the ending x coordinate}
\item{\code{y}}{[integer]  the y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
