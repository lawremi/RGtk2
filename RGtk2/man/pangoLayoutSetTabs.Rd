\alias{pangoLayoutSetTabs}
\name{pangoLayoutSetTabs}
\title{pangoLayoutSetTabs}
\description{Sets the tabs to use for \code{layout}, overriding the default tabs
(by default, tabs are every 8 spaces). If \code{tabs} is \code{NULL}, the default
tabs are reinstated. \code{tabs} is copied into the layout; you must
free your copy of \code{tabs} yourself.}
\usage{pangoLayoutSetTabs(object, tabs = NULL)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\verb{tabs}}{[\code{\link{PangoTabArray}}]  a \code{\link{PangoTabArray}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
