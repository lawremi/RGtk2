\alias{cairoRelLineTo}
\name{cairoRelLineTo}
\title{cairoRelLineTo}
\description{Relative-coordinate version of \code{\link{cairoLineTo}}. Adds a line to the
path from the current point to a point that is offset from the
current point by (\code{dx}, \code{dy}) in user space. After this call the
current point will be offset by (\code{dx}, \code{dy}).}
\usage{cairoRelLineTo(cr, dx, dy)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\code{dx}}{[numeric]  the X offset to the end of the new line}
\item{\code{dy}}{[numeric]  the Y offset to the end of the new line}
}
\details{Given a current point of (x, y), cairo\_rel\_line\_to(\code{cr}, \code{dx}, \code{dy})
is logically equivalent to cairo\_line\_to (\code{cr}, x + \code{dx}, y + \code{dy}).  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
