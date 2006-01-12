\alias{gdkDisplaySetDoubleClickDistance}
\name{gdkDisplaySetDoubleClickDistance}
\title{gdkDisplaySetDoubleClickDistance}
\description{Sets the double click distance (two clicks within this distance
count as a double click and result in a \code{GDK_2BUTTON_PRESS} event).
See also \code{\link{gdkDisplaySetDoubleClickTime}}.
Applications should \emph{not} set this, it is a global 
user-configured setting.}
\usage{gdkDisplaySetDoubleClickDistance(object, distance)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDisplay}}]  a \code{\link{GdkDisplay}}}
\item{\code{distance}}{[numeric]  distance in pixels}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
