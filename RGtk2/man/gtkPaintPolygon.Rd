\alias{gtkPaintPolygon}
\name{gtkPaintPolygon}
\title{gtkPaintPolygon}
\description{Draws a polygon on \code{window} with the given parameters.}
\usage{gtkPaintPolygon(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, points, fill)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\verb{area}}{[\verb{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\verb{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\verb{points}}{[\verb{\link{GdkPoint}}]  a list of \verb{\link{GdkPoint}}s}
\item{\verb{fill}}{[logical] \code{TRUE} if the polygon should be filled}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
