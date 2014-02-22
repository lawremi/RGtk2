\alias{gtkPaintArrow}
\name{gtkPaintArrow}
\title{gtkPaintArrow}
\description{Draws an arrow in the given rectangle on \code{window} using the given 
parameters. \code{arrow.type} determines the direction of the arrow.}
\usage{gtkPaintArrow(object, window, state.type, shadow.type, area = NULL, 
    widget = NULL, detail = NULL, arrow.type, fill, x, y, width, 
    height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{the type of shadow to draw}
\item{\verb{area}}{clip rectangle, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{arrow.type}}{the type of arrow to draw}
\item{\verb{fill}}{\code{TRUE} if the arrow tip should be filled}
\item{\verb{x}}{x origin of the rectangle to draw the arrow in}
\item{\verb{y}}{y origin of the rectangle to draw the arrow in}
\item{\verb{width}}{width of the rectangle to draw the arrow in}
\item{\verb{height}}{height of the rectangle to draw the arrow in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
