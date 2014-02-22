\alias{gtkPaintVline}
\name{gtkPaintVline}
\title{gtkPaintVline}
\description{Draws a vertical line from (\code{x}, \code{y1.}) to (\code{x}, \code{y2.}) in \code{window}
using the given style and state.}
\usage{gtkPaintVline(object, window, state.type, area = NULL, widget = NULL, 
    detail = NULL, y1, y2, x)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{area}}{rectangle to which the output is clipped, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{y1}}{the starting y coordinate}
\item{\verb{y2}}{the ending y coordinate}
\item{\verb{x}}{the x coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
