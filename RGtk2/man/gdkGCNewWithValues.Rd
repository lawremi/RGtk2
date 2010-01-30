\alias{gdkGCNewWithValues}
\name{gdkGCNewWithValues}
\title{gdkGCNewWithValues}
\description{Create a new GC with the given initial values.}
\usage{gdkGCNewWithValues(object, values)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}}. The created GC must always be used
  with drawables of the same depth as this one.}
\item{\verb{values}}{[\verb{\link{GdkGCValues}}]  a structure containing initial values for the GC.}
}
\value{[\verb{\link{GdkGC}}]  the new graphics context.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
