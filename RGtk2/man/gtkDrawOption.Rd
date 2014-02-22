\alias{gtkDrawOption}
\name{gtkDrawOption}
\title{gtkDrawOption}
\description{
Draws a radio button indicator in the given rectangle on \code{window} with 
the given parameters.
\strong{WARNING: \code{gtk_draw_option} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintOption}} instead.}
}
\usage{gtkDrawOption(object, window, state.type, shadow.type, x, y, 
    width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{the type of shadow to draw}
\item{\verb{x}}{x origin of the rectangle to draw the option in}
\item{\verb{y}}{y origin of the rectangle to draw the option in}
\item{\verb{width}}{the width of the rectangle to draw the option in}
\item{\verb{height}}{the height of the rectangle to draw the option in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
