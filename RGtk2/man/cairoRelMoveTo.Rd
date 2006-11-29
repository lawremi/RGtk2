\alias{cairoRelMoveTo}
\name{cairoRelMoveTo}
\title{cairoRelMoveTo}
\description{Begin a new sub-path. After this call the current point will offset
by (\code{x}, \code{y}).}
\usage{cairoRelMoveTo(cr, dx, dy)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\code{dx}}{[numeric]  the X offset}
\item{\code{dy}}{[numeric]  the Y offset}
}
\details{Given a current point of (x, y), cairo\_rel\_move\_to(\code{cr}, \code{dx}, \code{dy})
is logically equivalent to cairo\_move\_to (\code{cr}, x + \code{dx}, y + \code{dy}).
  
It is an error to call this function with no current point. Doing
so will cause \code{cr} to shutdown with a status of
CAIRO\_STATUS\_NO\_CURRENT\_POINT.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
