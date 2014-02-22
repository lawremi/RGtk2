\alias{pangoLayoutGetTabs}
\name{pangoLayoutGetTabs}
\title{pangoLayoutGetTabs}
\description{Gets the current \code{\link{PangoTabArray}} used by this layout. If no
\code{\link{PangoTabArray}} has been set, then the default tabs are in use
and \code{NULL} is returned. Default tabs are every 8 spaces.}
\usage{pangoLayoutGetTabs(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\value{[\code{\link{PangoTabArray}}]  a copy of the tabs for this layout, or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
