\alias{gtkPaintString}
\name{gtkPaintString}
\title{gtkPaintString}
\description{
Draws a text string on \code{window} with the given parameters.
\strong{WARNING: \code{gtk_paint_string} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintLayout}} instead.  
Draws a text string on \code{window} with the given parameters.  }
}
\usage{gtkPaintString(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, string)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{x}}{[integer]  x origin}
\item{\code{y}}{[integer]  y origin}
\item{\code{string}}{[character]  the string to draw}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
