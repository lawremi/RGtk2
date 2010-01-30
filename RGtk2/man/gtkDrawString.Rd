\alias{gtkDrawString}
\name{gtkDrawString}
\title{gtkDrawString}
\description{
Draws a text string on \code{window} with the given parameters.
\strong{WARNING: \code{gtk_draw_string} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintLayout}} instead.}
}
\usage{gtkDrawString(object, window, state.type, x, y, string)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{x}}{[integer]  x origin}
\item{\verb{y}}{[integer]  y origin}
\item{\verb{string}}{[character]  the string to draw}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
