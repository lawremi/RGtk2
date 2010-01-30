\alias{gtkPaintString}
\name{gtkPaintString}
\title{gtkPaintString}
\description{
Draws a text string on \code{window} with the given parameters.
\strong{WARNING: \code{gtk_paint_string} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintLayout}} instead.}
}
\usage{gtkPaintString(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, string)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{area}}{[\verb{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\verb{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\verb{x}}{[integer]  x origin}
\item{\verb{y}}{[integer]  y origin}
\item{\verb{string}}{[character]  the string to draw}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
