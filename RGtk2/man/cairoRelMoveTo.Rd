\alias{cairoRelMoveTo}
\name{cairoRelMoveTo}
\title{cairoRelMoveTo}
\description{Begin a new sub-path. After this call the current point will offset
by (\code{x}, \code{y}).}
\usage{cairoRelMoveTo(cr, dx, dy)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{dx}}{[numeric]  the X offset}
\item{\verb{dy}}{[numeric]  the Y offset}
}
\details{Given a current point of (x, y), cairo_rel_move_to(\code{cr}, \code{dx}, \code{dy})
is logically equivalent to cairo_move_to(\code{cr}, x + \code{dx}, y + \code{dy}).
  
It is an error to call this function with no current point. Doing
so will cause \code{cr} to shutdown with a status of
\code{CAIRO_STATUS_NO_CURRENT_POINT}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
