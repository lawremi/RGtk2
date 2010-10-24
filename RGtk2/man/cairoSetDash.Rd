\alias{cairoSetDash}
\name{cairoSetDash}
\title{cairoSetDash}
\description{Sets the dash pattern to be used by \code{\link{cairoStroke}}. A dash pattern
is specified by \code{dashes}, a list of positive values. Each value
provides the length of alternate "on" and "off" portions of the
stroke. The \code{offset} specifies an offset into the pattern at which
the stroke begins.}
\usage{cairoSetDash(cr, dashes, offset)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{dashes}}{[numeric]  a list specifying alternate lengths of on and off stroke portions}
\item{\verb{offset}}{[numeric]  an offset into the dash pattern at which the stroke should start}
}
\details{Each "on" segment will have caps applied as if the segment were a
separate sub-path. In particular, it is valid to use an "on" length
of 0.0 with \code{CAIRO_LINE_CAP_ROUND} or \code{CAIRO_LINE_CAP_SQUARE} in order
to distributed dots or squares along a path.
  
Note: The length values are in user-space units as evaluated at the
time of stroking. This is not necessarily the same as the user
space at the time of \code{\link{cairoSetDash}}.
  
If \code{num.dashes} is 0 dashing is disabled.
  
If \code{num.dashes} is 1 a symmetric pattern is assumed with alternating
on and off portions of the size specified by the single value in
\code{dashes}.
  
If any value in \code{dashes} is negative, or if all values are 0, then
\code{cr} will be put into an error state with a status of
\code{CAIRO_STATUS_INVALID_DASH}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
