\alias{pangoRendererGetColor}
\name{pangoRendererGetColor}
\title{pangoRendererGetColor}
\description{Gets the current rendering color for the specified part.}
\usage{pangoRendererGetColor(object, part)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoRenderer}}]  a \code{\link{PangoRenderer}}}
\item{\verb{part}}{[\code{\link{PangoRenderPart}}]  the part to get the color for}
}
\details{  Since 1.8}
\value{[\code{\link{PangoColor}}]  the color for the specified part, or \code{NULL}
 if it hasn't been set and should be inherited from the
 environment.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
