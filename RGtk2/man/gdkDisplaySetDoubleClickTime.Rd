\alias{gdkDisplaySetDoubleClickTime}
\name{gdkDisplaySetDoubleClickTime}
\title{gdkDisplaySetDoubleClickTime}
\description{Sets the double click time (two clicks within this time interval
count as a double click and result in a \verb{GDK_2BUTTON_PRESS} event).
Applications should \emph{not} set this, it is a global 
user-configured setting.}
\usage{gdkDisplaySetDoubleClickTime(object, msec)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDisplay}}}
\item{\verb{msec}}{double click time in milliseconds (thousandths of a second)}
}
\details{Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
