\alias{cairoGetTarget}
\name{cairoGetTarget}
\title{cairoGetTarget}
\description{Gets the target surface for the cairo context as passed to
\code{\link{cairoCreate}}.}
\usage{cairoGetTarget(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{This function will always return a valid pointer, but the result
can be a "nil" surface if \code{cr} is already in an error state,
(ie. \code{\link{cairoStatus}} \code{!=} \code{CAIRO_STATUS_SUCCESS}).
A nil surface is indicated by \code{\link{cairoSurfaceStatus}}
\code{!=} \code{CAIRO_STATUS_SUCCESS}.  }
\value{[\code{\link{CairoSurface}}]  the target surface. To
keep a reference to it,}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
