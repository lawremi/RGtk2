\alias{gdkRegionSpansIntersectForeach}
\name{gdkRegionSpansIntersectForeach}
\title{gdkRegionSpansIntersectForeach}
\description{Calls a function on each span in the intersection of \code{region} and \code{spans}.}
\usage{gdkRegionSpansIntersectForeach(object, spans, sorted, fun, data)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkRegion}}]  a \verb{\link{GdkRegion}}}
\item{\verb{spans}}{[\verb{\link{GdkSpan}}]  a list of \verb{GdkSpans}}
\item{\verb{sorted}}{[logical] \code{TRUE} if \code{spans} is sorted wrt. the y coordinate}
\item{\verb{data}}{[R object]  data to pass to \code{function}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
