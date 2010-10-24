\alias{gtkDrawString}
\name{gtkDrawString}
\title{gtkDrawString}
\description{
Draws a text string on \code{window} with the given parameters.
\strong{WARNING: \code{gtk_draw_string} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintLayout}} instead.}
}
\usage{gtkDrawString(object, window, state.type, x, y, string)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{x}}{x origin}
\item{\verb{y}}{y origin}
\item{\verb{string}}{the string to draw}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
