\alias{cairoSetDash}
\name{cairoSetDash}
\title{cairoSetDash}
\description{Sets the dash pattern to be used by \code{\link{cairoStroke}}. A dash pattern
is specified by \code{dashes}, a list of positive values. Each value
provides the user-space length of altenate "on" and "off" portions
of the stroke. The \code{offset} specifies an offset into the pattern at
which the stroke begins.}
\usage{cairoSetDash(cr, dashes, offset)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\code{dashes}}{[numeric]  a list specifying alternate lengths of on and off po}
\item{\code{offset}}{[numeric]  an offset into the dash pattern at which the stroke should start}
}
\details{If \code{num.dashes} is 0 dashing is disabled.
  
If \code{num.dashes} is 1 a symmetric pattern is assumed with alternating
on and off portions of the size specified by the single value in
\code{dashes}.
  
If any value in \code{dashes} is negative, or if all values are 0, then
\code{cairo.t} will be put into an error state with a status of
\code{CAIRO_STATUS_INVALID_DASH}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
