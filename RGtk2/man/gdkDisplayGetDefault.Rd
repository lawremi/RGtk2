\alias{gdkDisplayGetDefault}
\name{gdkDisplayGetDefault}
\title{gdkDisplayGetDefault}
\description{Gets the default \verb{\link{GdkDisplay}}. This is a convenience
function for:
\preformatted{  gdk_display_manager_get_default_display (gdk_display_manager_get ())
}}
\usage{gdkDisplayGetDefault()}
\details{  Since  2.2}
\value{[\verb{\link{GdkDisplay}}]  a \verb{\link{GdkDisplay}}, or \code{NULL} if there is no default
  display.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
