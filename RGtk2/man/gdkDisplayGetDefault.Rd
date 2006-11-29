\alias{gdkDisplayGetDefault}
\name{gdkDisplayGetDefault}
\title{gdkDisplayGetDefault}
\description{Gets the default \code{\link{GdkDisplay}}. This is a convenience
function for:
\preformatted{  gdk_display_manager_get_default_display (  \link{gdkDisplayManagerGet}  )
}}
\usage{gdkDisplayGetDefault()}
\details{  Since  2.2}
\value{[\code{\link{GdkDisplay}}]  a \code{\link{GdkDisplay}}, or \code{NULL} if there is no default
  display.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
