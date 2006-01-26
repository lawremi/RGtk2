\alias{gtkDrawPolygon}
\name{gtkDrawPolygon}
\title{gtkDrawPolygon}
\description{
Draws a polygon on \code{window} with the given parameters.
\strong{WARNING: \code{gtk_draw_polygon} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintPolygon}} instead.}
}
\usage{gtkDrawPolygon(object, window, state.type, shadow.type, points, fill)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\code{points}}{[\code{\link{GdkPoint}}]  a list of \code{\link{GdkPoint}}s}
\item{\code{fill}}{[logical]  \code{TRUE} if the polygon should be filled}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
