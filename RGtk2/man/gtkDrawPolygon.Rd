\alias{gtkDrawPolygon}
\name{gtkDrawPolygon}
\title{gtkDrawPolygon}
\description{
Draws a polygon on \code{window} with the given parameters.
\strong{WARNING: \code{gtk_draw_polygon} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintPolygon}} instead.}
}
\usage{gtkDrawPolygon(object, window, state.type, shadow.type, points, 
    fill)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{type of shadow to draw}
\item{\verb{points}}{a list of \code{\link{GdkPoint}}s}
\item{\verb{fill}}{\code{TRUE} if the polygon should be filled}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
