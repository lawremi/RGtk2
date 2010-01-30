\alias{gdkPangoRendererSetStipple}
\name{gdkPangoRendererSetStipple}
\title{gdkPangoRendererSetStipple}
\description{Sets the stipple for one render part (foreground, background, underline,
etc.) Note that this is overwritten when iterating through the individual
styled runs of a \verb{\link{PangoLayout}} or \verb{\link{PangoLayoutLine}}. This function is thus
only useful when you call low level functions like \code{\link{pangoRendererDrawGlyphs}}
directly, or in the 'prepare_run' virtual function of a subclass of
\verb{\link{GdkPangoRenderer}}.}
\usage{gdkPangoRendererSetStipple(object, part, stipple)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkPangoRenderer}}]  a \verb{\link{GdkPangoRenderer}}}
\item{\verb{part}}{[\code{\link{PangoRenderPart}}]  the part to render with the stipple}
\item{\verb{stipple}}{[\verb{\link{GdkBitmap}}]  the new stipple value.}
}
\details{  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
