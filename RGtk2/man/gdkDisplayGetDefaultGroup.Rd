\alias{gdkDisplayGetDefaultGroup}
\name{gdkDisplayGetDefaultGroup}
\title{gdkDisplayGetDefaultGroup}
\description{Returns the default group leader window for all toplevel windows
on \code{display}. This window is implicitly created by GDK. 
See \code{\link{gdkWindowSetGroup}}.}
\usage{gdkDisplayGetDefaultGroup(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkDisplay}}}}
\details{Since 2.4}
\value{[\code{\link{GdkWindow}}] The default group leader window for \code{display}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
