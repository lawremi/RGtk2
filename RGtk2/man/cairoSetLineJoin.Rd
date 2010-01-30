\alias{cairoSetLineJoin}
\name{cairoSetLineJoin}
\title{cairoSetLineJoin}
\description{Sets the current line join style within the cairo context. See
\verb{\link{CairoLineJoin}} for details about how the available line join
styles are drawn.}
\usage{cairoSetLineJoin(cr, line.join)}
\arguments{
\item{\verb{cr}}{[\verb{\link{Cairo}}]  a cairo context}
\item{\verb{line.join}}{[\verb{\link{CairoLineJoin}}]  a line joint style}
}
\details{As with the other stroke parameters, the current line join style is
examined by \code{\link{cairoStroke}}, \code{\link{cairoStrokeExtents}}, and
\code{cairoStrokeToPath()}, but does not have any effect during path
construction.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
