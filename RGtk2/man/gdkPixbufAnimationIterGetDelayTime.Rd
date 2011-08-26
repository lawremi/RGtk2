\alias{gdkPixbufAnimationIterGetDelayTime}
\name{gdkPixbufAnimationIterGetDelayTime}
\title{gdkPixbufAnimationIterGetDelayTime}
\description{Gets the number of milliseconds the current pixbuf should be displayed,
or -1 if the current pixbuf should be displayed forever. \code{\link{gTimeoutAdd}}
conveniently takes a timeout in milliseconds, so you can use a timeout
to schedule the next update.}
\usage{gdkPixbufAnimationIterGetDelayTime(object)}
\arguments{\item{\verb{object}}{an animation iterator}}
\value{[integer] delay time in milliseconds (thousandths of a second)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
