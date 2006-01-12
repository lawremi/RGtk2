\alias{gdkDisplaySetDoubleClickTime}
\name{gdkDisplaySetDoubleClickTime}
\title{gdkDisplaySetDoubleClickTime}
\description{Sets the double click time (two clicks within this time interval
count as a double click and result in a \code{GDK_2BUTTON_PRESS} event).
Applications should \emph{not} set this, it is a global 
user-configured setting.}
\usage{gdkDisplaySetDoubleClickTime(object, msec)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDisplay}}]  a \code{\link{GdkDisplay}}}
\item{\code{msec}}{[numeric]  double click time in milliseconds (thousandths of a second) }
}
\details{  Since  2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
