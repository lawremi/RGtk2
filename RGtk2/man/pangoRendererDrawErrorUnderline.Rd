\alias{pangoRendererDrawErrorUnderline}
\name{pangoRendererDrawErrorUnderline}
\title{pangoRendererDrawErrorUnderline}
\description{Draw a squiggly line that approximately covers the given rectangle
in the style of an underline used to indicate a spelling error.
(The width of the underline is rounded to an integer number
of up/down segments and the resulting rectangle is centered
in the original rectangle)}
\usage{pangoRendererDrawErrorUnderline(object, x, y, width, height)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoRenderer}}]  a \code{\link{PangoRenderer}}}
\item{\verb{x}}{[integer]  X coordinate of underline, in Pango units in user coordinate system}
\item{\verb{y}}{[integer]  Y coordinate of underline, in Pango units in user coordinate system}
\item{\verb{width}}{[integer]  width of underline, in Pango units in user coordinate system}
\item{\verb{height}}{[integer]  height of underline, in Pango units in user coordinate system}
}
\details{This should be called while \code{renderer} is already active.  Use
\code{\link{pangoRendererActivate}} to activate a renderer.  
  Since 1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
