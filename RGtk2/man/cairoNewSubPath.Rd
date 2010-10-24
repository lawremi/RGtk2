\alias{cairoNewSubPath}
\name{cairoNewSubPath}
\title{cairoNewSubPath}
\description{Begin a new sub-path. Note that the existing path is not
affected. After this call there will be no current point.}
\usage{cairoNewSubPath(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{In many cases, this call is not needed since new sub-paths are
frequently started with \code{\link{cairoMoveTo}}.
  
A call to \code{\link{cairoNewSubPath}} is particularly useful when
beginning a new sub-path with one of the \code{\link{cairoArc}} calls. This
makes things easier as it is no longer necessary to manually
compute the arc's initial coordinates for a call to
\code{\link{cairoMoveTo}}.  
  Since 1.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
