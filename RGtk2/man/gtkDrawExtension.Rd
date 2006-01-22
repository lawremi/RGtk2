\alias{gtkDrawExtension}
\name{gtkDrawExtension}
\title{gtkDrawExtension}
\description{
Draws an extension, i.e. a notebook tab.
\strong{WARNING: \code{gtk_draw_extension} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintExtension}} instead.  
Draws an extension, i.e. a notebook tab.  }
}
\usage{gtkDrawExtension(object, window, state.type, shadow.type, x, y, width, height, gap.side)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\code{x}}{[integer]  x origin of the extension}
\item{\code{y}}{[integer]  y origin of the extension}
\item{\code{width}}{[integer]  width of the extension }
\item{\code{height}}{[integer]  width of the extension }
\item{\code{gap.side}}{[\code{\link{GtkPositionType}}]  the side on to which the extension is attached}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
