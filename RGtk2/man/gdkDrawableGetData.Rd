\alias{gdkDrawableGetData}
\name{gdkDrawableGetData}
\title{gdkDrawableGetData}
\description{
Equivalent to \code{\link{gObjectGetData}}; the \code{\link{GObject}} variant should be
used instead.
\strong{WARNING: \code{gdk_drawable_get_data} is deprecated and should not be used in newly-written code.}
}
\usage{gdkDrawableGetData(object, key)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDrawable}}}
\item{\verb{key}}{name the data was stored under}
}
\value{[R object] the data stored at \code{key}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
