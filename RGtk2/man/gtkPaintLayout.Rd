\alias{gtkPaintLayout}
\name{gtkPaintLayout}
\title{gtkPaintLayout}
\description{Draws a layout on \code{window} using the given parameters.}
\usage{gtkPaintLayout(object, window, state.type, use.text, area = NULL, widget = NULL, detail = NULL, x, y, layout)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{use.text}}{[logical]  whether to use the text or foreground
           graphics context of \code{style}}
\item{\verb{area}}{[\verb{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\verb{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\verb{x}}{[integer]  x origin}
\item{\verb{y}}{[integer]  y origin}
\item{\verb{layout}}{[\verb{\link{PangoLayout}}]  the layout to draw}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
