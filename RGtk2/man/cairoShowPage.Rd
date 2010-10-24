\alias{cairoShowPage}
\name{cairoShowPage}
\title{cairoShowPage}
\description{Emits and clears the current page for backends that support multiple
pages.  Use \code{\link{cairoCopyPage}} if you don't want to clear the page.}
\usage{cairoShowPage(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{This is a convenience function that simply calls
\code{\link{cairoSurfaceShowPage}} on \code{cr}'s target.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
