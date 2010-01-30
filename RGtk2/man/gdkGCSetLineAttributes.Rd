\alias{gdkGCSetLineAttributes}
\name{gdkGCSetLineAttributes}
\title{gdkGCSetLineAttributes}
\description{Sets various attributes of how lines are drawn. See
the corresponding members of \verb{\link{GdkGCValues}} for full
explanations of the arguments.}
\usage{gdkGCSetLineAttributes(object, line.width, line.style, cap.style, join.style)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkGC}}]  a \verb{\link{GdkGC}}.}
\item{\verb{line.width}}{[integer]  the width of lines.}
\item{\verb{line.style}}{[\code{\link{GdkLineStyle}}]  the dash-style for lines.}
\item{\verb{cap.style}}{[\code{\link{GdkCapStyle}}]  the manner in which the ends of lines are drawn.}
\item{\verb{join.style}}{[\code{\link{GdkJoinStyle}}]  the in which lines are joined together.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
