\alias{gtkPaintResizeGrip}
\name{gtkPaintResizeGrip}
\title{gtkPaintResizeGrip}
\description{Draws a resize grip in the given rectangle on \code{window} using the given
parameters.}
\usage{gtkPaintResizeGrip(object, window, state.type, area = NULL, widget = NULL, 
    detail = NULL, edge, x, y, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{area}}{clip rectangle, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{edge}}{the edge in which to draw the resize grip}
\item{\verb{x}}{the x origin of the rectangle in which to draw the resize grip}
\item{\verb{y}}{the y origin of the rectangle in which to draw the resize grip}
\item{\verb{width}}{the width of the rectangle in which to draw the resize grip}
\item{\verb{height}}{the height of the rectangle in which to draw the resize grip}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
