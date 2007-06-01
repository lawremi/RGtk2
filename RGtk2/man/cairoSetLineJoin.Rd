\alias{cairoSetLineJoin}
\name{cairoSetLineJoin}
\title{cairoSetLineJoin}
\description{Sets the current line join style within the cairo context. See
\code{\link{CairoLineJoin}} for details about how the available line join
styles are drawn.}
\usage{cairoSetLineJoin(cr, line.join)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\code{line.join}}{[\code{\link{CairoLineJoin}}]  a line joint style}
}
\details{As with the other stroke parameters, the current line join style is
examined by \code{\link{cairoStroke}}, \code{\link{cairoStrokeExtents}}, and
\code{cairoStrokeToPath()}, but does not have any effect during path
construction.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
