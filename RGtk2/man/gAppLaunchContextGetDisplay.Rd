\alias{gAppLaunchContextGetDisplay}
\name{gAppLaunchContextGetDisplay}
\title{gAppLaunchContextGetDisplay}
\description{Gets the display string for the display. This is used to ensure new
applications are started on the same display as the launching 
application.}
\usage{gAppLaunchContextGetDisplay(object, info, files)}
\arguments{
\item{\verb{object}}{a \code{\link{GAppLaunchContext}}}
\item{\verb{info}}{a \code{\link{GAppInfo}}}
\item{\verb{files}}{a \verb{list} of \code{\link{GFile}} objects}
}
\value{[char] a display string for the display.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
