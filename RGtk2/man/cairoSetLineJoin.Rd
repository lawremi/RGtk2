\alias{cairoSetLineJoin}
\name{cairoSetLineJoin}
\title{cairoSetLineJoin}
\description{Sets the current line join style within the cairo context. See
\code{\link{CairoLineJoin}} for details about how the available line join
styles are drawn.}
\usage{cairoSetLineJoin(cr, line.join)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{line.join}}{[\code{\link{CairoLineJoin}}]  a line join style}
}
\details{As with the other stroke parameters, the current line join style is
examined by \code{\link{cairoStroke}}, \code{\link{cairoStrokeExtents}}, and
\code{cairoStrokeToPath()}, but does not have any effect during path
construction.
  
The default line join style is \code{CAIRO_LINE_JOIN_MITER}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
