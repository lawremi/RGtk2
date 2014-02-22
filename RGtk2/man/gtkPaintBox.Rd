\alias{gtkPaintBox}
\name{gtkPaintBox}
\title{gtkPaintBox}
\description{Draws a box on \code{window} with the given parameters.}
\usage{gtkPaintBox(object, window, state.type, shadow.type, area = NULL, 
    widget = NULL, detail = NULL, x, y, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{the type of shadow to draw}
\item{\verb{area}}{clip rectangle, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{x}}{x origin of the box}
\item{\verb{y}}{y origin of the box}
\item{\verb{width}}{the width of the box}
\item{\verb{height}}{the height of the box}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
