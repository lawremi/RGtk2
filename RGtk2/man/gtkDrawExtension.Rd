\alias{gtkDrawExtension}
\name{gtkDrawExtension}
\title{gtkDrawExtension}
\description{
Draws an extension, i.e. a notebook tab.
\strong{WARNING: \code{gtk_draw_extension} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintExtension}} instead.}
}
\usage{gtkDrawExtension(object, window, state.type, shadow.type, x, 
    y, width, height, gap.side)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{type of shadow to draw}
\item{\verb{x}}{x origin of the extension}
\item{\verb{y}}{y origin of the extension}
\item{\verb{width}}{width of the extension}
\item{\verb{height}}{width of the extension}
\item{\verb{gap.side}}{the side on to which the extension is attached}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
