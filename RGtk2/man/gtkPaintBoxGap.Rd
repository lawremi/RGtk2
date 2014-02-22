\alias{gtkPaintBoxGap}
\name{gtkPaintBoxGap}
\title{gtkPaintBoxGap}
\description{Draws a box in \code{window} using the given style and state and shadow type, 
leaving a gap in one side.}
\usage{gtkPaintBoxGap(object, window, state.type, shadow.type, area = NULL, 
    widget = NULL, detail = NULL, x, y, width, height, gap.side, 
    gap.x, gap.width)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{type of shadow to draw}
\item{\verb{area}}{clip rectangle, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{x}}{x origin of the rectangle}
\item{\verb{y}}{y origin of the rectangle}
\item{\verb{width}}{width of the rectangle}
\item{\verb{height}}{width of the rectangle}
\item{\verb{gap.side}}{side in which to leave the gap}
\item{\verb{gap.x}}{starting position of the gap}
\item{\verb{gap.width}}{width of the gap}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
