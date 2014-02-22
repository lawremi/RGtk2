\alias{gtkPaintShadow}
\name{gtkPaintShadow}
\title{gtkPaintShadow}
\description{Draws a shadow around the given rectangle in \code{window} 
using the given style and state and shadow type.}
\usage{gtkPaintShadow(object, window, state.type, shadow.type, area = NULL, 
    widget = NULL, detail = NULL, x, y, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{type of shadow to draw}
\item{\verb{area}}{clip rectangle or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{x}}{x origin of the rectangle}
\item{\verb{y}}{y origin of the rectangle}
\item{\verb{width}}{width of the rectangle}
\item{\verb{height}}{width of the rectangle}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
