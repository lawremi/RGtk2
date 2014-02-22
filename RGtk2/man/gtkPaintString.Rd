\alias{gtkPaintString}
\name{gtkPaintString}
\title{gtkPaintString}
\description{
Draws a text string on \code{window} with the given parameters.
\strong{WARNING: \code{gtk_paint_string} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintLayout}} instead.}
}
\usage{gtkPaintString(object, window, state.type, area = NULL, widget = NULL, 
    detail = NULL, x, y, string)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{area}}{clip rectangle, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{x}}{x origin}
\item{\verb{y}}{y origin}
\item{\verb{string}}{the string to draw}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
