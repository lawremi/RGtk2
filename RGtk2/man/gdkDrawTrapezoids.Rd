\alias{gdkDrawTrapezoids}
\name{gdkDrawTrapezoids}
\title{gdkDrawTrapezoids}
\description{Draws a set of anti-aliased trapezoids. The trapezoids are
combined using saturation addition, then drawn over the background
as a set. This is low level functionality used internally to implement
rotated underlines and backgrouds when rendering a PangoLayout and is
likely not useful for applications.}
\usage{gdkDrawTrapezoids(drawable, gc, trapezoids)}
\arguments{
\item{\verb{drawable}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}}}
\item{\verb{gc}}{[\verb{\link{GdkGC}}]  a \verb{\link{GdkGC}}}
\item{\verb{trapezoids}}{[\verb{\link{GdkTrapezoid}}]  a list of \verb{\link{GdkTrapezoid}} structures}
}
\details{  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
