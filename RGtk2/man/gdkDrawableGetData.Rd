\alias{gdkDrawableGetData}
\name{gdkDrawableGetData}
\title{gdkDrawableGetData}
\description{
Equivalent to \code{\link{gObjectGetData}}; the \code{\link{GObject}} variant should be
used instead.
\strong{WARNING: \code{gdk_drawable_get_data} is deprecated and should not be used in newly-written code.  
Equivalent to \code{\link{gObjectGetData}}; the \code{\link{GObject}} variant should be
used instead.  }
}
\usage{gdkDrawableGetData(object, key)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}}}
\item{\code{key}}{[character]  name the data was stored under}
}
\value{[R object]  the data stored at \code{key}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
