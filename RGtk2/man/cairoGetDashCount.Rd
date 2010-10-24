\alias{cairoGetDashCount}
\name{cairoGetDashCount}
\title{cairoGetDashCount}
\description{This function returns the length of the dash list in \code{cr} (0 if dashing
is not currently in effect).}
\usage{cairoGetDashCount(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}}
\details{See also \code{\link{cairoSetDash}} and \code{\link{cairoGetDash}}.  
  Since 1.4}
\value{[integer]  the length of the dash list, or 0 if no dash list set.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
