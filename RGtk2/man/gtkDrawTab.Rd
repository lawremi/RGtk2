\alias{gtkDrawTab}
\name{gtkDrawTab}
\title{gtkDrawTab}
\description{
Draws an option menu tab (i.e. the up and down pointing arrows)
in the given rectangle on \code{window} using the given parameters.
\strong{WARNING: \code{gtk_draw_tab} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintTab}} instead.}
}
\usage{gtkDrawTab(object, window, state.type, shadow.type, x, y, width, 
    height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{the type of shadow to draw}
\item{\verb{x}}{x origin of the rectangle to draw the tab in}
\item{\verb{y}}{y origin of the rectangle to draw the tab in}
\item{\verb{width}}{the width of the rectangle to draw the tab in}
\item{\verb{height}}{the height of the rectangle to draw the tab in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
