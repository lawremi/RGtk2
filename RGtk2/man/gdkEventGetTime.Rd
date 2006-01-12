\alias{gdkEventGetTime}
\name{gdkEventGetTime}
\title{gdkEventGetTime}
\description{Returns the time stamp from \code{event}, if there is one; otherwise
returns \code{GDK_CURRENT_TIME}. If \code{event} is \code{NULL}, returns \code{GDK_CURRENT_TIME}.}
\usage{gdkEventGetTime(object)}
\arguments{\item{\code{object}}{[\code{\link{GdkEvent}}]  a \code{\link{GdkEvent}}}}
\value{[numeric]  time stamp field from \code{event}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
