\alias{gtkPaintSlider}
\name{gtkPaintSlider}
\title{gtkPaintSlider}
\description{Draws a slider in the given rectangle on \code{window} using the
given style and orientation.}
\usage{gtkPaintSlider(object, window, state.type, shadow.type, area = NULL, 
    widget = NULL, detail = NULL, x, y, width, height, orientation)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{a shadow}
\item{\verb{area}}{clip rectangle, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{x}}{the x origin of the rectangle in which to draw a slider}
\item{\verb{y}}{the y origin of the rectangle in which to draw a slider}
\item{\verb{width}}{the width of the rectangle in which to draw a slider}
\item{\verb{height}}{the height of the rectangle in which to draw a slider}
\item{\verb{orientation}}{the orientation to be used}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
