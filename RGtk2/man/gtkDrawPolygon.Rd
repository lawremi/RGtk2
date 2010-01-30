\alias{gtkDrawPolygon}
\name{gtkDrawPolygon}
\title{gtkDrawPolygon}
\description{
Draws a polygon on \code{window} with the given parameters.
\strong{WARNING: \code{gtk_draw_polygon} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintPolygon}} instead.}
}
\usage{gtkDrawPolygon(object, window, state.type, shadow.type, points, fill)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\verb{points}}{[\verb{\link{GdkPoint}}]  a list of \verb{\link{GdkPoint}}s}
\item{\verb{fill}}{[logical] \code{TRUE} if the polygon should be filled}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
