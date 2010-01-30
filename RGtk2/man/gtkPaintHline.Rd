\alias{gtkPaintHline}
\name{gtkPaintHline}
\title{gtkPaintHline}
\description{Draws a horizontal line from (\code{x1}, \code{y}) to (\code{x2}, \code{y}) in \code{window}
using the given style and state.}
\usage{gtkPaintHline(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x1, x2, y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{area}}{[\verb{\link{GdkRectangle}}]  rectangle to which the output is clipped, or \code{NULL} if the
       output should not be clipped}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\verb{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\verb{x1}}{[integer]  the starting x coordinate}
\item{\verb{x2}}{[integer]  the ending x coordinate}
\item{\verb{y}}{[integer]  the y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
