\alias{gdkPangoRendererGetDefault}
\name{gdkPangoRendererGetDefault}
\title{gdkPangoRendererGetDefault}
\description{Gets the default \verb{\link{PangoRenderer}} for a screen. This default renderer
is shared by all users of the display, so properties such as the color
or transformation matrix set for the renderer may be overwritten
by functions such as \code{\link{gdkDrawLayout}}.}
\usage{gdkPangoRendererGetDefault(screen)}
\arguments{\item{\verb{screen}}{[\verb{\link{GdkScreen}}]  a \verb{\link{GdkScreen}}}}
\details{Before using the renderer, you need to call \code{\link{gdkPangoRendererSetDrawable}}
and \code{\link{gdkPangoRendererSetGc}} to set the drawable and graphics context
to use for drawing.  

  Since  2.6}
\value{[\verb{\link{PangoRenderer}}]  the default \verb{\link{PangoRenderer}} for \code{screen}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
