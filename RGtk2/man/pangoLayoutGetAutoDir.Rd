\alias{pangoLayoutGetAutoDir}
\name{pangoLayoutGetAutoDir}
\title{pangoLayoutGetAutoDir}
\description{Gets whether to calculate the bidirectional base direction
for the layout according to the contents of the layout.
See \code{\link{pangoLayoutSetAutoDir}}.}
\usage{pangoLayoutGetAutoDir(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\details{  Since 1.4}
\value{[logical] \code{TRUE} if the bidirectional base direction
  is computed from the layout's contents, \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
