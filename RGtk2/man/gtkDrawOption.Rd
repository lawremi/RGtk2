\alias{gtkDrawOption}
\name{gtkDrawOption}
\title{gtkDrawOption}
\description{
Draws a radio button indicator in the given rectangle on \code{window} with 
the given parameters.
\strong{WARNING: \code{gtk_draw_option} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintOption}} instead.}
}
\usage{gtkDrawOption(object, window, state.type, shadow.type, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  the type of shadow to draw}
\item{\code{x}}{[integer]  x origin of the rectangle to draw the option in}
\item{\code{y}}{[integer]  y origin of the rectangle to draw the option in}
\item{\code{width}}{[integer]  the width of the rectangle to draw the option in}
\item{\code{height}}{[integer]  the height of the rectangle to draw the option in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
