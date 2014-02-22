\alias{gtkPaintCheck}
\name{gtkPaintCheck}
\title{gtkPaintCheck}
\description{Draws a check button indicator in the given rectangle on \code{window} with 
the given parameters.}
\usage{gtkPaintCheck(object, window, state.type, shadow.type, area = NULL, 
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
\item{\verb{x}}{x origin of the rectangle to draw the check in}
\item{\verb{y}}{y origin of the rectangle to draw the check in}
\item{\verb{width}}{the width of the rectangle to draw the check in}
\item{\verb{height}}{the height of the rectangle to draw the check in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
