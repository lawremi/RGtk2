\alias{pangoRendererGetLayoutLine}
\name{pangoRendererGetLayoutLine}
\title{pangoRendererGetLayoutLine}
\description{Gets the layout line currently being rendered using \code{renderer}.
Calling this function only makes sense from inside a subclass's
methods, like in its draw_shape() for example.}
\usage{pangoRendererGetLayoutLine(renderer)}
\arguments{\item{\verb{renderer}}{[\code{\link{PangoRenderer}}]  a \code{\link{PangoRenderer}}}}
\details{The returned layout line should not be modified while still being
rendered.  
  Since 1.20}
\value{[\code{\link{PangoLayoutLine}}]  the layout line, or \code{NULL} if no layout line is being
 rendered using \code{renderer} at this time.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
