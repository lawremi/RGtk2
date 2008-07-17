\alias{gdkRegionSpansIntersectForeach}
\name{gdkRegionSpansIntersectForeach}
\title{gdkRegionSpansIntersectForeach}
\description{Calls a function on each span in the intersection of \code{region} and \code{spans}.}
\usage{gdkRegionSpansIntersectForeach(object, spans, sorted, fun, data)}
\arguments{
\item{\code{object}}{[\code{\link{GdkRegion}}]  a \code{\link{GdkRegion}}}
\item{\code{spans}}{[\code{\link{GdkSpan}}]  a list of \code{GdkSpans}}
\item{\code{sorted}}{[logical] \code{TRUE} if \code{spans} is sorted wrt. the y coordinate}
\item{\code{data}}{[R object]  data to pass to \code{function}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
