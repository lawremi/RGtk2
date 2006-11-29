\alias{cairoCopyPage}
\name{cairoCopyPage}
\title{cairoCopyPage}
\description{Emits the current page for backends that support multiple pages, but
doesn't clear it, so, the contents of the current page will be retained
for the next page too.  Use \code{\link{cairoShowPage}} if you want to get an
empty page after the emission.}
\usage{cairoCopyPage(cr)}
\arguments{\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
