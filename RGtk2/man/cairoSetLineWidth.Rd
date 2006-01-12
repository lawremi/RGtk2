\alias{cairoSetLineWidth}
\name{cairoSetLineWidth}
\title{cairoSetLineWidth}
\description{Sets the current line width within the cairo context. The line
width specifies the diameter of a pen that is circular in
user-space.}
\usage{cairoSetLineWidth(cr, width)}
\arguments{
\item{\code{cr}}{[\code{\link{cairo_t}}]  a \code{\link{cairo_t}}}
\item{\code{width}}{[numeric]  a line width, as a user-space value}
}
\details{As with the other stroke parameters, the current line cap style is
examined by \code{\link{cairoStroke}}, \code{\link{cairoStrokeExtents}}, and
\code{cairoStrokeToPath()}, but does not have any effect during path
construction.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
