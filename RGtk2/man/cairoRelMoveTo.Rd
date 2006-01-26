\alias{cairoRelMoveTo}
\name{cairoRelMoveTo}
\title{cairoRelMoveTo}
\description{If the current subpath is not empty, begin a new subpath. After
this call the current point will offset by (\code{x}, \code{y}).}
\usage{cairoRelMoveTo(cr, dx, dy)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\code{dx}}{[numeric]  the X offset}
\item{\code{dy}}{[numeric]  the Y offset}
}
\details{Given a current point of (x, y), cairo_rel_move_to(\code{cr}, \code{dx}, \code{dy})
is logically equivalent to cairo_move_to (\code{cr}, x + \code{dx}, y + \code{dy}).  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
