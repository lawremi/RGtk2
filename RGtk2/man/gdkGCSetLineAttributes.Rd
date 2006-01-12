\alias{gdkGCSetLineAttributes}
\name{gdkGCSetLineAttributes}
\title{gdkGCSetLineAttributes}
\description{Sets various attributes of how lines are drawn. See
the corresponding members of \code{\link{GdkGCValues}} for full
explanations of the arguments.}
\usage{gdkGCSetLineAttributes(object, line.width, line.style, cap.style, join.style)}
\arguments{
\item{\code{object}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}.}
\item{\code{line.width}}{[integer]  the width of lines.}
\item{\code{line.style}}{[\code{\link{GdkLineStyle}}]  the dash-style for lines.}
\item{\code{cap.style}}{[\code{\link{GdkCapStyle}}]  the manner in which the ends of lines are drawn.}
\item{\code{join.style}}{[\code{\link{GdkJoinStyle}}]  the in which lines are joined together.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
