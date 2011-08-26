\alias{gdkPangoRendererSetOverrideColor}
\name{gdkPangoRendererSetOverrideColor}
\title{gdkPangoRendererSetOverrideColor}
\description{Sets the color for a particular render part (foreground,
background, underline, etc.), overriding any attributes on the layouts
renderered with this renderer.}
\usage{gdkPangoRendererSetOverrideColor(object, part, color = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPangoRenderer}}}
\item{\verb{part}}{the part to render to set the color of}
\item{\verb{color}}{the color to use, or \code{NULL} to unset a previously
set override color. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
