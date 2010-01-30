\alias{gdkDrawableSetData}
\name{gdkDrawableSetData}
\title{gdkDrawableSetData}
\description{
This function is equivalent to \code{\link{gObjectSetData}},
the \verb{\link{GObject}} variant should be used instead.
\strong{WARNING: \code{gdk_drawable_set_data} is deprecated and should not be used in newly-written code.}
}
\usage{gdkDrawableSetData(object, key, data)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}}}
\item{\verb{key}}{[character]  name to store the data under}
\item{\verb{data}}{[R object]  arbitrary data}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
