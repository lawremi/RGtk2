\alias{cairoSetLineCap}
\name{cairoSetLineCap}
\title{cairoSetLineCap}
\description{Sets the current line cap style within the cairo context. See
\code{\link{CairoLineCap}} for details about how the available line cap
styles are drawn.}
\usage{cairoSetLineCap(cr, line.cap)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\code{line.cap}}{[\code{\link{CairoLineCap}}]  a line cap style}
}
\details{As with the other stroke parameters, the current line cap style is
examined by \code{\link{cairoStroke}}, \code{\link{cairoStrokeExtents}}, and
\code{cairoStrokeToPath()}, but does not have any effect during path
construction.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
