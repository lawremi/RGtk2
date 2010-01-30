\alias{gtkPaintExtension}
\name{gtkPaintExtension}
\title{gtkPaintExtension}
\description{Draws an extension, i.e. a notebook tab.}
\usage{gtkPaintExtension(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, gap.side)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\verb{area}}{[\verb{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\verb{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\verb{x}}{[integer]  x origin of the extension}
\item{\verb{y}}{[integer]  y origin of the extension}
\item{\verb{width}}{[integer]  width of the extension }
\item{\verb{height}}{[integer]  width of the extension }
\item{\verb{gap.side}}{[\code{\link{GtkPositionType}}]  the side on to which the extension is attached}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
