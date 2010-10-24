\alias{cairoGetLineWidth}
\name{cairoGetLineWidth}
\title{cairoGetLineWidth}
\description{This function returns the current line width value exactly as set by
\code{\link{cairoSetLineWidth}}. Note that the value is unchanged even if
the CTM has changed between the calls to \code{\link{cairoSetLineWidth}} and
\code{\link{cairoGetLineWidth}}.}
\usage{cairoGetLineWidth(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\value{[numeric]  the current line width.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
