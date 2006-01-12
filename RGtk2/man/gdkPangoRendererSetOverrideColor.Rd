\alias{gdkPangoRendererSetOverrideColor}
\name{gdkPangoRendererSetOverrideColor}
\title{gdkPangoRendererSetOverrideColor}
\description{Sets the color for a particular render part (foreground,
background, underline, etc.), overriding any attributes on the layouts
renderered with this renderer.}
\usage{gdkPangoRendererSetOverrideColor(object, part, color = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPangoRenderer}}]  a \code{\link{GdkPangoRenderer}}}
\item{\code{part}}{[\code{\link{PangoRenderPart}}]  the part to render to set the color of}
\item{\code{color}}{[\code{\link{GdkColor}}]  the color to use, or \code{NULL} to unset a previously
        set override color.}
}
\details{  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
