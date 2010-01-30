\alias{gtkAccelGroupDisconnect}
\name{gtkAccelGroupDisconnect}
\title{gtkAccelGroupDisconnect}
\description{Removes an accelerator previously installed through
\code{\link{gtkAccelGroupConnect}}.}
\usage{gtkAccelGroupDisconnect(object, closure)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkAccelGroup}}]  the accelerator group to remove an accelerator from}
\item{\verb{closure}}{[\verb{\link{GClosure}}]      the closure to remove from this accelerator group}
}
\value{[logical] \code{TRUE} if the closure was found and got disconnected}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
