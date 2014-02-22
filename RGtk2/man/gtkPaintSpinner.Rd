\alias{gtkPaintSpinner}
\name{gtkPaintSpinner}
\title{gtkPaintSpinner}
\description{Draws a spinner on \code{window} using the given parameters.}
\usage{gtkPaintSpinner(object, window, state.type, area, widget, detail, 
    step, x, y, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{area}}{clip rectangle, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget (may be \code{NULL}). \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail (may be \code{NULL}). \emph{[  \acronym{allow-none}  ]}}
\item{\verb{step}}{the nth step, a value between 0 and \verb{"num-steps"}}
\item{\verb{x}}{the x origin of the rectangle in which to draw the spinner}
\item{\verb{y}}{the y origin of the rectangle in which to draw the spinner}
\item{\verb{width}}{the width of the rectangle in which to draw the spinner}
\item{\verb{height}}{the height of the rectangle in which to draw the spinner}
}
\details{Since 2.20}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
