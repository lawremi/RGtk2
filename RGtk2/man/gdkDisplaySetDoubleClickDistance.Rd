\alias{gdkDisplaySetDoubleClickDistance}
\name{gdkDisplaySetDoubleClickDistance}
\title{gdkDisplaySetDoubleClickDistance}
\description{Sets the double click distance (two clicks within this distance
count as a double click and result in a \verb{GDK_2BUTTON_PRESS} event).
See also \code{\link{gdkDisplaySetDoubleClickTime}}.
Applications should \emph{not} set this, it is a global 
user-configured setting.}
\usage{gdkDisplaySetDoubleClickDistance(object, distance)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDisplay}}}
\item{\verb{distance}}{distance in pixels}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
