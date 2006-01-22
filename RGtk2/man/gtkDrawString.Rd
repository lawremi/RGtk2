\alias{gtkDrawString}
\name{gtkDrawString}
\title{gtkDrawString}
\description{
Draws a text string on \code{window} with the given parameters.
\strong{WARNING: \code{gtk_draw_string} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintLayout}} instead.  
Draws a text string on \code{window} with the given parameters.  }
}
\usage{gtkDrawString(object, window, state.type, x, y, string)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{x}}{[integer]  x origin}
\item{\code{y}}{[integer]  y origin}
\item{\code{string}}{[character]  the string to draw}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
