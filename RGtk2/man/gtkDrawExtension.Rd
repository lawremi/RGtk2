\alias{gtkDrawExtension}
\name{gtkDrawExtension}
\title{gtkDrawExtension}
\description{
Draws an extension, i.e. a notebook tab.
\strong{WARNING: \code{gtk_draw_extension} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintExtension}} instead.}
}
\usage{gtkDrawExtension(object, window, state.type, shadow.type, x, y, width, height, gap.side)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\verb{x}}{[integer]  x origin of the extension}
\item{\verb{y}}{[integer]  y origin of the extension}
\item{\verb{width}}{[integer]  width of the extension }
\item{\verb{height}}{[integer]  width of the extension }
\item{\verb{gap.side}}{[\code{\link{GtkPositionType}}]  the side on to which the extension is attached}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
