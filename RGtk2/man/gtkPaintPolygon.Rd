\alias{gtkPaintPolygon}
\name{gtkPaintPolygon}
\title{gtkPaintPolygon}
\description{Draws a polygon on \code{window} with the given parameters.}
\usage{gtkPaintPolygon(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, points, fill)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{points}}{[\code{\link{GdkPoint}}]  a list of \code{\link{GdkPoint}}s}
\item{\code{fill}}{[logical] \code{TRUE} if the polygon should be filled}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
