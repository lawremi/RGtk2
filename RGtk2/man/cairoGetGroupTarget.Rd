\alias{cairoGetGroupTarget}
\name{cairoGetGroupTarget}
\title{cairoGetGroupTarget}
\description{Gets the current destination surface for the context. This is either
the original target surface as passed to \code{\link{cairoCreate}} or the target
surface for the current group as started by the most recent call to
\code{\link{cairoPushGroup}} or \code{\link{cairoPushGroupWithContent}}.}
\usage{cairoGetGroupTarget(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{This function will always return a valid pointer, but the result
can be a "nil" surface if \code{cr} is already in an error state,
(ie. \code{\link{cairoStatus}} \code{!=} \code{CAIRO_STATUS_SUCCESS}).
A nil surface is indicated by \code{\link{cairoSurfaceStatus}}
\code{!=} \code{CAIRO_STATUS_SUCCESS}.  
  Since 1.2}
\value{[\code{\link{CairoSurface}}]  the target surface. To
keep a reference to it,}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
