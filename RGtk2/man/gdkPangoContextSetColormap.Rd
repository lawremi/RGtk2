\alias{gdkPangoContextSetColormap}
\name{gdkPangoContextSetColormap}
\title{gdkPangoContextSetColormap}
\description{
This function used to set the colormap to be used for drawing with
\code{context}. The colormap is now always derived from the graphics
context used for drawing, so calling this function is no longer
necessary.
\strong{WARNING: \code{gdk_pango_context_set_colormap} is deprecated and should not be used in newly-written code.}
}
\usage{gdkPangoContextSetColormap(context, colormap)}
\arguments{
\item{\verb{context}}{a \code{\link{PangoContext}}}
\item{\verb{colormap}}{a \code{\link{GdkColormap}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
