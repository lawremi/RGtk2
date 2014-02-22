\alias{pangoRendererGetLayout}
\name{pangoRendererGetLayout}
\title{pangoRendererGetLayout}
\description{Gets the layout currently being rendered using \code{renderer}.
Calling this function only makes sense from inside a subclass's
methods, like in its draw_shape() for example.}
\usage{pangoRendererGetLayout(renderer)}
\arguments{\item{\verb{renderer}}{[\code{\link{PangoRenderer}}]  a \code{\link{PangoRenderer}}}}
\details{The returned layout should not be modified while still being
rendered.  
  Since 1.20}
\value{[\code{\link{PangoLayout}}]  the layout, or \code{NULL} if no layout is being
 rendered using \code{renderer} at this time.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
