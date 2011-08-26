\alias{gtkDrawLayout}
\name{gtkDrawLayout}
\title{gtkDrawLayout}
\description{
Draws a layout on \code{window} using the given parameters.
\strong{WARNING: \code{gtk_draw_layout} is deprecated and should not be used in newly-written code.}
}
\usage{gtkDrawLayout(object, window, state.type, use.text, x, y, layout)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{use.text}}{whether to use the text or foreground
graphics context of \code{style}}
\item{\verb{x}}{x origin}
\item{\verb{y}}{y origin}
\item{\verb{layout}}{the layout to draw}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
