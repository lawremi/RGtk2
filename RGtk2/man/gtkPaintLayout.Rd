\alias{gtkPaintLayout}
\name{gtkPaintLayout}
\title{gtkPaintLayout}
\description{Draws a layout on \code{window} using the given parameters.}
\usage{gtkPaintLayout(object, window, state.type, use.text, area = NULL, widget = NULL, detail = NULL, x, y, layout)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{use.text}}{[logical]  whether to use the text or foreground
           graphics context of \code{style}}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{x}}{[integer]  x origin}
\item{\code{y}}{[integer]  y origin}
\item{\code{layout}}{[\code{\link{PangoLayout}}]  the layout to draw}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
