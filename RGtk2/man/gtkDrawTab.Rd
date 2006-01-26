\alias{gtkDrawTab}
\name{gtkDrawTab}
\title{gtkDrawTab}
\description{
Draws an option menu tab (i.e. the up and down pointing arrows)
in the given rectangle on \code{window} using the given parameters.
\strong{WARNING: \code{gtk_draw_tab} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintTab}} instead.}
}
\usage{gtkDrawTab(object, window, state.type, shadow.type, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  the type of shadow to draw}
\item{\code{x}}{[integer]  x origin of the rectangle to draw the tab in}
\item{\code{y}}{[integer]  y origin of the rectangle to draw the tab in}
\item{\code{width}}{[integer]  the width of the rectangle to draw the tab in}
\item{\code{height}}{[integer]  the height of the rectangle to draw the tab in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
