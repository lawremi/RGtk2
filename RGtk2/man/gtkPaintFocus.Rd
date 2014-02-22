\alias{gtkPaintFocus}
\name{gtkPaintFocus}
\title{gtkPaintFocus}
\description{Draws a focus indicator around the given rectangle on \code{window} using the
given style.}
\usage{gtkPaintFocus(object, window, state.type, area = NULL, widget = NULL, 
    detail = NULL, x, y, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{area}}{clip rectangle, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{x}}{the x origin of the rectangle around which to draw a focus indicator}
\item{\verb{y}}{the y origin of the rectangle around which to draw a focus indicator}
\item{\verb{width}}{the width of the rectangle around which to draw a focus indicator}
\item{\verb{height}}{the height of the rectangle around which to draw a focus indicator}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
