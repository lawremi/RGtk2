\alias{gtkPaintVline}
\name{gtkPaintVline}
\title{gtkPaintVline}
\description{Draws a vertical line from (\code{x}, \code{y1.}) to (\code{x}, \code{y2.}) in \code{window}
using the given style and state.}
\usage{gtkPaintVline(object, window, state.type, area = NULL, widget = NULL, detail = NULL, y1, y2, x)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{area}}{[\verb{\link{GdkRectangle}}]  rectangle to which the output is clipped, or \code{NULL} if the
       output should not be clipped}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\verb{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\verb{y1}}{[integer]  the starting y coordinate}
\item{\verb{y2}}{[integer]  the ending y coordinate}
\item{\verb{x}}{[integer]  the x coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
