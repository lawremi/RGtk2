\alias{gtkPaintHline}
\name{gtkPaintHline}
\title{gtkPaintHline}
\description{Draws a horizontal line from (\code{x1}, \code{y}) to (\code{x2}, \code{y}) in \code{window}
using the given style and state.}
\usage{gtkPaintHline(object, window, state.type, area = NULL, widget = NULL, 
    detail = NULL, x1, x2, y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{area}}{rectangle to which the output is clipped, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{x1}}{the starting x coordinate}
\item{\verb{x2}}{the ending x coordinate}
\item{\verb{y}}{the y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
