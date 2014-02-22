\alias{gtkPaintPolygon}
\name{gtkPaintPolygon}
\title{gtkPaintPolygon}
\description{Draws a polygon on \code{window} with the given parameters.}
\usage{gtkPaintPolygon(object, window, state.type, shadow.type, area = NULL, 
    widget = NULL, detail = NULL, points, fill)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{type of shadow to draw}
\item{\verb{area}}{clip rectangle, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{points}}{a list of \code{\link{GdkPoint}}s}
\item{\verb{fill}}{\code{TRUE} if the polygon should be filled}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
