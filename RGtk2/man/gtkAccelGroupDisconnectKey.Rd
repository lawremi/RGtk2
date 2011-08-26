\alias{gtkAccelGroupDisconnectKey}
\name{gtkAccelGroupDisconnectKey}
\title{gtkAccelGroupDisconnectKey}
\description{Removes an accelerator previously installed through
\code{\link{gtkAccelGroupConnect}}.}
\usage{gtkAccelGroupDisconnectKey(object, accel.key, accel.mods)}
\arguments{
\item{\verb{object}}{the accelerator group to install an accelerator in}
\item{\verb{accel.key}}{key value of the accelerator}
\item{\verb{accel.mods}}{modifier combination of the accelerator}
}
\value{[logical] \code{TRUE} if there was an accelerator which could be
removed, \code{FALSE} otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
