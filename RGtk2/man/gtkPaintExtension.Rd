\alias{gtkPaintExtension}
\name{gtkPaintExtension}
\title{gtkPaintExtension}
\description{Draws an extension, i.e. a notebook tab.}
\usage{gtkPaintExtension(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, gap.side)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{x}}{[integer]  x origin of the extension}
\item{\code{y}}{[integer]  y origin of the extension}
\item{\code{width}}{[integer]  width of the extension }
\item{\code{height}}{[integer]  width of the extension }
\item{\code{gap.side}}{[\code{\link{GtkPositionType}}]  the side on to which the extension is attached}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
